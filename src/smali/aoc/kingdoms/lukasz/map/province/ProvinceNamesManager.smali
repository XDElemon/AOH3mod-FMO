.class public Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;
.super Ljava/lang/Object;
.source "ProvinceNamesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$DrawProvinceNames;
    }
.end annotation


# static fields
.field public static final FONT_ID:I

.field public static NULL_INDICATOR:I

.field public static drawProvinceNames:Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$DrawProvinceNames;

.field public static provinceNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceNameData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const/16 v0, 0x29a

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->NULL_INDICATOR:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    .line 367
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$1;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$1;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvinceNames:Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$DrawProvinceNames;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildProvNameData()V
    .registers 4

    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "saveData":Z
    const/4 v1, 0x0

    .local v1, "i":I
    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "iPNamesSize":I
    :goto_8
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v3

    if-ge v1, v3, :cond_21

    .line 150
    if-gt v2, v1, :cond_1a

    .line 151
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->buildProvNamePoints(I)V

    .line 152
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 153
    const/4 v0, 0x1

    .line 156
    :cond_1a
    const/4 v3, 0x0

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->buildProvNameData(IZ)V

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 159
    .end local v1    # "i":I
    .end local v2    # "iPNamesSize":I
    :cond_21
    if-eqz v0, :cond_26

    .line 160
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveProvinceNamesPoints()V

    .line 162
    :cond_26
    return-void
.end method

.method public static final buildProvNameData(IZ)V
    .registers 28
    .param p0, "i"    # I
    .param p1, "rebuild"    # Z

    .line 176
    move/from16 v1, p0

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_631

    .line 179
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p1, :cond_3e

    .line 180
    :try_start_10
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 182
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawMatrix4:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 183
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fontScale:F

    .line 184
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawAngleLow:F

    .line 187
    :cond_3e
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    invoke-static {v0, v5, v6, v7}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth3(FFFF)F

    move-result v0

    move v5, v0

    .line 189
    .local v5, "maxWidth":F
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    sub-float/2addr v6, v7

    const v7, 0x3ecccccd    # 0.4f

    mul-float v6, v6, v7

    add-float/2addr v6, v0

    .line 190
    .local v6, "tfX":F
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    sget-object v8, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v8, v8, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    sget-object v9, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v9, v9, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    sub-float/2addr v8, v9

    mul-float v8, v8, v7

    add-float/2addr v8, v0

    .line 191
    .local v8, "tfY":F
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    sget-object v9, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v9, v9, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    sget-object v10, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v10, v10, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    sub-float/2addr v9, v10

    mul-float v9, v9, v7

    add-float/2addr v9, v0

    .line 192
    .local v9, "tfX2":F
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    sget-object v10, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v10, v10, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    sget-object v11, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v11, v11, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    sub-float/2addr v10, v11

    mul-float v10, v10, v7

    add-float v7, v0, v10

    .line 194
    .local v7, "tfY2":F
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v10, v0, 0x8

    .line 195
    .local v10, "iPrecision":I
    new-array v0, v10, [Lcom/badlogic/gdx/math/Vector2;

    move-object v11, v0

    .line 197
    .local v11, "vPoints":[Lcom/badlogic/gdx/math/Vector2;
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    move-object v12, v0

    .line 198
    .local v12, "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v6, v8}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v0, v12, v4

    .line 199
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v6, v8}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v13, 0x1

    aput-object v0, v12, v13

    .line 200
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    sget-object v14, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v14, v14, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    sget-object v15, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v15, v15, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    invoke-direct {v0, v14, v15}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v14, 0x2

    aput-object v0, v12, v14

    .line 201
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v9, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v14, 0x3

    aput-object v0, v12, v14

    .line 202
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v9, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v14, 0x4

    aput-object v0, v12, v14

    .line 204
    new-instance v0, Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-direct {v0, v12, v4}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    move-object v14, v0

    .line 206
    .local v14, "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_14e
    if-ge v0, v10, :cond_165

    .line 207
    new-instance v15, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v15}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v15, v11, v0

    .line 208
    aget-object v15, v11, v0

    int-to-float v2, v0

    int-to-float v4, v10

    sub-float/2addr v4, v3

    div-float/2addr v2, v4

    invoke-virtual {v14, v15, v2}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    .line 206
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_14e

    .line 211
    .end local v0    # "j":I
    :cond_165
    const/4 v0, 0x0

    .line 213
    .local v0, "tempPrecisionWidth":F
    const/4 v2, 0x0

    move/from16 v25, v2

    move v2, v0

    move/from16 v0, v25

    .local v0, "j":I
    .local v2, "tempPrecisionWidth":F
    :goto_16c
    add-int/lit8 v4, v10, -0x1

    if-ge v0, v4, :cond_18f

    .line 214
    aget-object v4, v11, v0

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    aget-object v15, v11, v0

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-int/lit8 v16, v0, 0x1

    aget-object v3, v11, v16

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-int/lit8 v16, v0, 0x1

    aget-object v13, v11, v16

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v4, v15, v3, v13}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth3(FFFF)F

    move-result v3
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_188} :catch_630

    add-float/2addr v2, v3

    .line 213
    add-int/lit8 v0, v0, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    goto :goto_16c

    .line 217
    .end local v0    # "j":I
    :cond_18f
    const/4 v3, 0x0

    .line 220
    .local v3, "acceptableWidth":F
    :try_start_190
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_19c
    .catch Ljava/lang/ArithmeticException; {:try_start_190 .. :try_end_19c} :catch_1a2
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_19c} :catch_630

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    int-to-float v0, v0

    div-float v3, v2, v0

    .line 223
    goto :goto_1a6

    .line 221
    :catch_1a2
    move-exception v0

    .line 222
    .local v0, "ex":Ljava/lang/ArithmeticException;
    :try_start_1a3
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 225
    .end local v0    # "ex":Ljava/lang/ArithmeticException;
    :goto_1a6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 226
    .local v4, "tempPoints":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector2;>;"
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    const/4 v13, 0x0

    aget-object v15, v11, v13

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->x:F

    move/from16 v16, v2

    .end local v2    # "tempPrecisionWidth":F
    .local v16, "tempPrecisionWidth":F
    aget-object v2, v11, v13

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v0, v15, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    const/4 v0, 0x0

    .line 230
    .local v0, "currentPointsWidth":F
    const/4 v2, 0x1

    .local v2, "j":I
    const/4 v13, 0x0

    move/from16 v25, v2

    move v2, v0

    move/from16 v0, v25

    .local v0, "j":I
    .local v2, "currentPointsWidth":F
    .local v13, "startPrecision":I
    :goto_1c7
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v0, v15, :cond_22b

    .line 231
    :goto_1d5
    add-int/lit8 v15, v10, -0x1

    if-ge v13, v15, :cond_21c

    .line 232
    aget-object v15, v11, v13

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->x:F

    move/from16 v18, v6

    .end local v6    # "tfX":F
    .local v18, "tfX":F
    aget-object v6, v11, v13

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-int/lit8 v19, v13, 0x1

    move/from16 v20, v7

    .end local v7    # "tfY2":F
    .local v20, "tfY2":F
    aget-object v7, v11, v19

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-int/lit8 v19, v13, 0x1

    move/from16 v21, v8

    .end local v8    # "tfY":F
    .local v21, "tfY":F
    aget-object v8, v11, v19

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v15, v6, v7, v8}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth3(FFFF)F

    move-result v6

    .line 234
    .local v6, "tempPrecisionWidth2":F
    add-float v7, v2, v6

    cmpl-float v7, v7, v3

    if-ltz v7, :cond_212

    .line 235
    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v11, v13

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    aget-object v15, v11, v13

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v7, v8, v15}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    add-float v7, v2, v6

    sub-float v2, v3, v7

    .line 238
    goto :goto_222

    .line 240
    :cond_212
    add-float/2addr v2, v6

    .line 231
    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v18

    move/from16 v7, v20

    move/from16 v8, v21

    goto :goto_1d5

    .end local v18    # "tfX":F
    .end local v20    # "tfY2":F
    .end local v21    # "tfY":F
    .local v6, "tfX":F
    .restart local v7    # "tfY2":F
    .restart local v8    # "tfY":F
    :cond_21c
    move/from16 v18, v6

    move/from16 v20, v7

    move/from16 v21, v8

    .line 230
    .end local v6    # "tfX":F
    .end local v7    # "tfY2":F
    .end local v8    # "tfY":F
    .restart local v18    # "tfX":F
    .restart local v20    # "tfY2":F
    .restart local v21    # "tfY":F
    :goto_222
    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v18

    move/from16 v7, v20

    move/from16 v8, v21

    goto :goto_1c7

    .end local v18    # "tfX":F
    .end local v20    # "tfY2":F
    .end local v21    # "tfY":F
    .restart local v6    # "tfX":F
    .restart local v7    # "tfY2":F
    .restart local v8    # "tfY":F
    :cond_22b
    move/from16 v18, v6

    move/from16 v20, v7

    move/from16 v21, v8

    .line 245
    .end local v0    # "j":I
    .end local v6    # "tfX":F
    .end local v7    # "tfY2":F
    .end local v8    # "tfY":F
    .end local v13    # "startPrecision":I
    .restart local v18    # "tfX":F
    .restart local v20    # "tfY2":F
    .restart local v21    # "tfY":F
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    array-length v6, v11

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aget-object v6, v11, v6

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    array-length v8, v11

    sub-int/2addr v8, v7

    aget-object v7, v11, v8

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v0, v6, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 248
    .local v6, "lPointsAngle":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v7, 0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/math/Vector2;

    iget v7, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v7

    float-to-double v7, v0

    const/4 v13, 0x0

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v0, v0

    const/4 v13, 0x1

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/badlogic/gdx/math/Vector2;

    iget v13, v15, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, v13

    move v15, v2

    move v13, v3

    .end local v2    # "currentPointsWidth":F
    .end local v3    # "acceptableWidth":F
    .local v13, "acceptableWidth":F
    .local v15, "currentPointsWidth":F
    float-to-double v2, v0

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v7, 0x4066800000000000L    # 180.0

    mul-double v2, v2, v7

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v7

    double-to-float v2, v2

    .line 250
    .local v2, "fAngle":F
    const/4 v0, 0x0

    .restart local v0    # "j":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3
    :try_end_29e
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_29e} :catch_630

    move v7, v0

    .end local v0    # "j":I
    .local v3, "jSize":I
    .local v7, "j":I
    :goto_29f
    if-ge v7, v3, :cond_3a3

    .line 254
    :try_start_2a1
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    if-ge v7, v0, :cond_2e2

    .line 255
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F
    :try_end_2c1
    .catch Ljava/lang/Exception; {:try_start_2a1 .. :try_end_2c1} :catch_319

    move/from16 v19, v3

    .end local v3    # "jSize":I
    .local v19, "jSize":I
    add-int/lit8 v3, v7, 0x1

    :try_start_2c5
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F
    :try_end_2cd
    .catch Ljava/lang/Exception; {:try_start_2c5 .. :try_end_2cd} :catch_2de

    move/from16 v22, v9

    .end local v9    # "tfX2":F
    .local v22, "tfX2":F
    add-int/lit8 v9, v7, 0x1

    :try_start_2d1
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v0, v8, v3, v9}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLinesAngle2(FFFF)F

    move-result v0

    .local v0, "tempPointsAngle":F
    goto :goto_30e

    .line 261
    .end local v0    # "tempPointsAngle":F
    .end local v22    # "tfX2":F
    .restart local v9    # "tfX2":F
    :catch_2de
    move-exception v0

    move/from16 v22, v9

    .end local v9    # "tfX2":F
    .restart local v22    # "tfX2":F
    goto :goto_31e

    .line 257
    .end local v19    # "jSize":I
    .end local v22    # "tfX2":F
    .restart local v3    # "jSize":I
    .restart local v9    # "tfX2":F
    :cond_2e2
    move/from16 v19, v3

    move/from16 v22, v9

    .end local v3    # "jSize":I
    .end local v9    # "tfX2":F
    .restart local v19    # "jSize":I
    .restart local v22    # "tfX2":F
    add-int/lit8 v0, v7, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-int/lit8 v3, v7, -0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v0, v3, v8, v9}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLinesAngle2(FFFF)F

    move-result v0

    .line 260
    .restart local v0    # "tempPointsAngle":F
    :goto_30e
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_315
    .catch Ljava/lang/Exception; {:try_start_2d1 .. :try_end_315} :catch_317

    .line 277
    goto/16 :goto_39b

    .line 261
    .end local v0    # "tempPointsAngle":F
    :catch_317
    move-exception v0

    goto :goto_31e

    .end local v19    # "jSize":I
    .end local v22    # "tfX2":F
    .restart local v3    # "jSize":I
    .restart local v9    # "tfX2":F
    :catch_319
    move-exception v0

    move/from16 v19, v3

    move/from16 v22, v9

    .end local v3    # "jSize":I
    .end local v9    # "tfX2":F
    .restart local v19    # "jSize":I
    .restart local v22    # "tfX2":F
    :goto_31e
    move-object v3, v0

    .line 264
    .local v3, "ex":Ljava/lang/Exception;
    if-nez v7, :cond_361

    .line 266
    :try_start_321
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-int/lit8 v9, v7, 0x1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F
    :try_end_33b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_321 .. :try_end_33b} :catch_355
    .catch Ljava/lang/Exception; {:try_start_321 .. :try_end_33b} :catch_630

    move-object/from16 v23, v3

    .end local v3    # "ex":Ljava/lang/Exception;
    .local v23, "ex":Ljava/lang/Exception;
    add-int/lit8 v3, v7, 0x1

    :try_start_33f
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v0, v8, v9, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLinesAngle2(FFFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_352
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_33f .. :try_end_352} :catch_353
    .catch Ljava/lang/Exception; {:try_start_33f .. :try_end_352} :catch_630

    .line 269
    goto :goto_39b

    .line 267
    :catch_353
    move-exception v0

    goto :goto_358

    .end local v23    # "ex":Ljava/lang/Exception;
    .restart local v3    # "ex":Ljava/lang/Exception;
    :catch_355
    move-exception v0

    move-object/from16 v23, v3

    .line 268
    .end local v3    # "ex":Ljava/lang/Exception;
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v23    # "ex":Ljava/lang/Exception;
    :goto_358
    :try_start_358
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_35f
    .catch Ljava/lang/Exception; {:try_start_358 .. :try_end_35f} :catch_630

    .line 269
    nop

    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_39b

    .line 272
    .end local v23    # "ex":Ljava/lang/Exception;
    .restart local v3    # "ex":Ljava/lang/Exception;
    :cond_361
    move-object/from16 v23, v3

    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v23    # "ex":Ljava/lang/Exception;
    add-int/lit8 v0, v7, -0x1

    :try_start_365
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-int/lit8 v3, v7, -0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v0, v3, v8, v9}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLinesAngle2(FFFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_392
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_365 .. :try_end_392} :catch_393
    .catch Ljava/lang/Exception; {:try_start_365 .. :try_end_392} :catch_630

    .line 275
    goto :goto_39b

    .line 273
    :catch_393
    move-exception v0

    .line 274
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_394
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v23    # "ex":Ljava/lang/Exception;
    :goto_39b
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v19

    move/from16 v9, v22

    goto/16 :goto_29f

    .end local v19    # "jSize":I
    .end local v22    # "tfX2":F
    .local v3, "jSize":I
    .restart local v9    # "tfX2":F
    :cond_3a3
    move/from16 v19, v3

    move/from16 v22, v9

    .line 280
    .end local v3    # "jSize":I
    .end local v7    # "j":I
    .end local v9    # "tfX2":F
    .restart local v22    # "tfX2":F
    const v0, 0x3f4ccccd    # 0.8f

    mul-float v3, v5, v0

    .line 282
    .local v3, "iDistance":F
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    move-object v7, v0

    .line 284
    .local v7, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    const-class v8, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;

    monitor-enter v8
    :try_end_3b5
    .catch Ljava/lang/Exception; {:try_start_394 .. :try_end_3b5} :catch_630

    .line 285
    :try_start_3b5
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 286
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceNameUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v0, v9}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 287
    const/4 v0, 0x0

    .line 289
    .local v0, "tempNumOfIterations":I
    iget v9, v7, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    div-float v9, v3, v9

    move/from16 v17, v0

    .end local v0    # "tempNumOfIterations":I
    .local v17, "tempNumOfIterations":I
    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 292
    .local v9, "tempScale":F
    iget v0, v7, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F
    :try_end_3eb
    .catchall {:try_start_3b5 .. :try_end_3eb} :catchall_625

    const v19, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v19

    if-lez v0, :cond_415

    .line 293
    :try_start_3f2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;
    :try_end_3f4
    .catchall {:try_start_3f2 .. :try_end_3f4} :catchall_40c

    move/from16 v19, v2

    const/4 v2, 0x0

    .end local v2    # "fAngle":F
    .local v19, "fAngle":F
    :try_start_3f7
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V
    :try_end_404
    .catchall {:try_start_3f7 .. :try_end_404} :catchall_405

    goto :goto_417

    .line 334
    .end local v9    # "tempScale":F
    .end local v17    # "tempNumOfIterations":I
    :catchall_405
    move-exception v0

    move/from16 v24, v3

    move/from16 v23, v5

    goto/16 :goto_62c

    .end local v19    # "fAngle":F
    .restart local v2    # "fAngle":F
    :catchall_40c
    move-exception v0

    move/from16 v19, v2

    move/from16 v24, v3

    move/from16 v23, v5

    .end local v2    # "fAngle":F
    .restart local v19    # "fAngle":F
    goto/16 :goto_62c

    .line 292
    .end local v19    # "fAngle":F
    .restart local v2    # "fAngle":F
    .restart local v9    # "tempScale":F
    .restart local v17    # "tempNumOfIterations":I
    :cond_415
    move/from16 v19, v2

    .line 297
    .end local v2    # "fAngle":F
    .restart local v19    # "fAngle":F
    :goto_417
    const/4 v2, 0x0

    cmpl-float v0, v3, v2

    if-lez v0, :cond_52c

    move/from16 v2, v17

    .line 299
    .end local v17    # "tempNumOfIterations":I
    .local v2, "tempNumOfIterations":I
    :goto_41e
    move/from16 v23, v5

    .end local v5    # "maxWidth":F
    .local v23, "maxWidth":F
    :try_start_420
    iget v0, v7, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F
    :try_end_422
    .catch Ljava/lang/Exception; {:try_start_420 .. :try_end_422} :catch_51b
    .catchall {:try_start_420 .. :try_end_422} :catchall_516

    const v17, 0x3c4ccccd    # 0.0125f

    const v24, 0x3ccccccd    # 0.025f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_493

    .line 300
    add-float v9, v9, v24

    .line 302
    :try_start_42e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const v5, 0x3a83126f    # 0.001f

    invoke-static {v5, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 304
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceNameUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v0, v5}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 306
    iget v0, v7, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    cmpg-float v0, v3, v0

    if-gez v0, :cond_482

    .line 307
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;
    :try_end_467
    .catch Ljava/lang/Exception; {:try_start_42e .. :try_end_467} :catch_48c
    .catchall {:try_start_42e .. :try_end_467} :catchall_487

    sub-float v5, v9, v17

    move/from16 v24, v9

    const v9, 0x38d1b717    # 1.0E-4f

    .end local v9    # "tempScale":F
    .local v24, "tempScale":F
    :try_start_46e
    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fontScale:F
    :try_end_474
    .catch Ljava/lang/Exception; {:try_start_46e .. :try_end_474} :catch_47b
    .catchall {:try_start_46e .. :try_end_474} :catchall_487

    .line 308
    move v0, v2

    move/from16 v9, v24

    move/from16 v24, v3

    goto/16 :goto_532

    .line 330
    :catch_47b
    move-exception v0

    move/from16 v9, v24

    move/from16 v24, v3

    goto/16 :goto_51e

    .line 306
    .end local v24    # "tempScale":F
    .restart local v9    # "tempScale":F
    :cond_482
    move/from16 v24, v9

    .end local v9    # "tempScale":F
    .restart local v24    # "tempScale":F
    move/from16 v24, v3

    goto :goto_4e1

    .line 334
    .end local v2    # "tempNumOfIterations":I
    .end local v24    # "tempScale":F
    :catchall_487
    move-exception v0

    move/from16 v24, v3

    goto/16 :goto_62c

    .line 330
    .restart local v2    # "tempNumOfIterations":I
    .restart local v9    # "tempScale":F
    :catch_48c
    move-exception v0

    move/from16 v24, v9

    move/from16 v24, v3

    .end local v9    # "tempScale":F
    .restart local v24    # "tempScale":F
    goto/16 :goto_51e

    .line 312
    .end local v24    # "tempScale":F
    .restart local v9    # "tempScale":F
    :cond_493
    sub-float v9, v9, v24

    .line 313
    :try_start_495
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const v5, 0x3a83126f    # 0.001f

    invoke-static {v5, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 315
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceNameUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v0, v5}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 317
    iget v0, v7, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    cmpl-float v0, v3, v0

    if-lez v0, :cond_4df

    .line 318
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;
    :try_end_4ce
    .catch Ljava/lang/Exception; {:try_start_495 .. :try_end_4ce} :catch_51b
    .catchall {:try_start_495 .. :try_end_4ce} :catchall_516

    add-float v5, v9, v17

    move/from16 v24, v3

    const v3, 0x38d1b717    # 1.0E-4f

    .end local v3    # "iDistance":F
    .local v24, "iDistance":F
    :try_start_4d5
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fontScale:F
    :try_end_4db
    .catch Ljava/lang/Exception; {:try_start_4d5 .. :try_end_4db} :catch_4dd
    .catchall {:try_start_4d5 .. :try_end_4db} :catchall_62e

    .line 319
    move v0, v2

    goto :goto_532

    .line 330
    :catch_4dd
    move-exception v0

    goto :goto_51e

    .line 317
    .end local v24    # "iDistance":F
    .restart local v3    # "iDistance":F
    :cond_4df
    move/from16 v24, v3

    .line 323
    .end local v3    # "iDistance":F
    .restart local v24    # "iDistance":F
    :goto_4e1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "tempNumOfIterations":I
    .local v3, "tempNumOfIterations":I
    const/16 v0, 0x3e7

    if-le v2, v0, :cond_50f

    .line 324
    :try_start_4e7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProvinceNamesManager: tempNumOfIterations: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 325
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    const v2, 0x38d1b717    # 1.0E-4f

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fontScale:F
    :try_end_50a
    .catch Ljava/lang/Exception; {:try_start_4e7 .. :try_end_50a} :catch_50c
    .catchall {:try_start_4e7 .. :try_end_50a} :catchall_62e

    .line 326
    move v0, v3

    goto :goto_532

    .line 330
    :catch_50c
    move-exception v0

    move v2, v3

    goto :goto_51e

    .line 323
    :cond_50f
    move v2, v3

    move/from16 v5, v23

    move/from16 v3, v24

    goto/16 :goto_41e

    .line 334
    .end local v9    # "tempScale":F
    .end local v24    # "iDistance":F
    .local v3, "iDistance":F
    :catchall_516
    move-exception v0

    move/from16 v24, v3

    .end local v3    # "iDistance":F
    .restart local v24    # "iDistance":F
    goto/16 :goto_62c

    .line 330
    .end local v24    # "iDistance":F
    .restart local v2    # "tempNumOfIterations":I
    .restart local v3    # "iDistance":F
    .restart local v9    # "tempScale":F
    :catch_51b
    move-exception v0

    move/from16 v24, v3

    .line 331
    .end local v3    # "iDistance":F
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v24    # "iDistance":F
    :goto_51e
    :try_start_51e
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    const v5, 0x38d1b717    # 1.0E-4f

    iput v5, v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fontScale:F

    goto :goto_533

    .line 297
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "tempNumOfIterations":I
    .end local v23    # "maxWidth":F
    .end local v24    # "iDistance":F
    .restart local v3    # "iDistance":F
    .restart local v5    # "maxWidth":F
    .restart local v17    # "tempNumOfIterations":I
    :cond_52c
    move/from16 v24, v3

    move/from16 v23, v5

    .end local v3    # "iDistance":F
    .end local v5    # "maxWidth":F
    .restart local v23    # "maxWidth":F
    .restart local v24    # "iDistance":F
    move/from16 v0, v17

    .line 333
    .end local v17    # "tempNumOfIterations":I
    .local v0, "tempNumOfIterations":I
    :goto_532
    nop

    .line 334
    .end local v0    # "tempNumOfIterations":I
    .end local v9    # "tempScale":F
    :goto_533
    monitor-exit v8
    :try_end_534
    .catchall {:try_start_51e .. :try_end_534} :catchall_62e

    .line 338
    const/4 v0, 0x0

    .local v0, "j":I
    :try_start_535
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "jSize":I
    :goto_539
    if-ge v0, v2, :cond_562

    .line 339
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawPoints:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v8, v8

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v9, v9

    invoke-direct {v5, v8, v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_539

    .line 342
    .end local v0    # "j":I
    .end local v2    # "jSize":I
    :cond_562
    const/4 v0, 0x0

    .restart local v0    # "j":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "jSize":I
    :goto_567
    if-ge v0, v2, :cond_58e

    .line 344
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawMatrix4:Ljava/util/List;

    new-instance v5, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v5}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v5, v8, v9}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_567

    .line 347
    .end local v0    # "j":I
    .end local v2    # "jSize":I
    :cond_58e
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    const/4 v2, 0x0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v3, v2, v5, v8}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLinesAngle2(FFFF)F

    move-result v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawAngleLow:F

    .line 349
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawMatrix4:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "a":I
    :goto_5d7
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceNameUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_601

    .line 350
    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawMatrix4:Ljava/util/List;

    new-instance v3, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v8}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d7

    .line 353
    .end local v0    # "a":I
    :cond_601
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawMatrix4:Ljava/util/List;

    new-instance v2, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawAngleLow:F

    invoke-virtual {v2, v3, v5}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_623
    .catch Ljava/lang/Exception; {:try_start_535 .. :try_end_623} :catch_630

    .line 356
    nop

    .end local v4    # "tempPoints":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector2;>;"
    .end local v6    # "lPointsAngle":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v7    # "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    .end local v10    # "iPrecision":I
    .end local v11    # "vPoints":[Lcom/badlogic/gdx/math/Vector2;
    .end local v12    # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .end local v13    # "acceptableWidth":F
    .end local v14    # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .end local v15    # "currentPointsWidth":F
    .end local v16    # "tempPrecisionWidth":F
    .end local v18    # "tfX":F
    .end local v19    # "fAngle":F
    .end local v20    # "tfY2":F
    .end local v21    # "tfY":F
    .end local v22    # "tfX2":F
    .end local v23    # "maxWidth":F
    .end local v24    # "iDistance":F
    goto :goto_631

    .line 334
    .local v2, "fAngle":F
    .restart local v3    # "iDistance":F
    .restart local v4    # "tempPoints":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector2;>;"
    .restart local v5    # "maxWidth":F
    .restart local v6    # "lPointsAngle":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v7    # "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    .restart local v10    # "iPrecision":I
    .restart local v11    # "vPoints":[Lcom/badlogic/gdx/math/Vector2;
    .restart local v12    # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .restart local v13    # "acceptableWidth":F
    .restart local v14    # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .restart local v15    # "currentPointsWidth":F
    .restart local v16    # "tempPrecisionWidth":F
    .restart local v18    # "tfX":F
    .restart local v20    # "tfY2":F
    .restart local v21    # "tfY":F
    .restart local v22    # "tfX2":F
    :catchall_625
    move-exception v0

    move/from16 v19, v2

    move/from16 v24, v3

    move/from16 v23, v5

    .end local v2    # "fAngle":F
    .end local v3    # "iDistance":F
    .end local v5    # "maxWidth":F
    .restart local v19    # "fAngle":F
    .restart local v23    # "maxWidth":F
    .restart local v24    # "iDistance":F
    :goto_62c
    :try_start_62c
    monitor-exit v8
    :try_end_62d
    .catchall {:try_start_62c .. :try_end_62d} :catchall_62e

    .end local p0    # "i":I
    .end local p1    # "rebuild":Z
    :try_start_62d
    throw v0
    :try_end_62e
    .catch Ljava/lang/Exception; {:try_start_62d .. :try_end_62e} :catch_630

    .restart local p0    # "i":I
    .restart local p1    # "rebuild":Z
    :catchall_62e
    move-exception v0

    goto :goto_62c

    .line 354
    .end local v4    # "tempPoints":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector2;>;"
    .end local v6    # "lPointsAngle":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v7    # "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    .end local v10    # "iPrecision":I
    .end local v11    # "vPoints":[Lcom/badlogic/gdx/math/Vector2;
    .end local v12    # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .end local v13    # "acceptableWidth":F
    .end local v14    # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .end local v15    # "currentPointsWidth":F
    .end local v16    # "tempPrecisionWidth":F
    .end local v18    # "tfX":F
    .end local v19    # "fAngle":F
    .end local v20    # "tfY2":F
    .end local v21    # "tfY":F
    .end local v22    # "tfX2":F
    .end local v23    # "maxWidth":F
    .end local v24    # "iDistance":F
    :catch_630
    move-exception v0

    .line 359
    :cond_631
    :goto_631
    return-void
.end method

.method public static final buildProvNamePoints(I)V
    .registers 23
    .param p0, "i"    # I

    .line 36
    move/from16 v0, p0

    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;-><init>()V

    .line 38
    .local v1, "nameData":Laoc/kingdoms/lukasz/map/province/ProvinceNameData;
    const/4 v2, 0x0

    .line 40
    .local v2, "maxWidth":F
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v3, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_e
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    const/4 v6, 0x0

    if-ge v4, v5, :cond_23

    .line 43
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 46
    .end local v4    # "j":I
    :cond_23
    const/4 v4, 0x0

    .line 48
    .local v4, "checkedWidthNum":I
    :goto_24
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    const/4 v7, 0x2

    sub-int/2addr v5, v7

    if-ge v4, v5, :cond_279

    const/16 v5, 0x12b

    if-ge v4, v5, :cond_279

    .line 49
    const/4 v5, 0x0

    .line 50
    .local v5, "iID":I
    const/4 v8, 0x1

    .line 52
    .local v8, "jID":I
    add-int/lit8 v4, v4, 0x2

    .line 53
    const/4 v2, 0x0

    .line 57
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3a
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ge v9, v10, :cond_10e

    .line 58
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_10a

    .line 59
    add-int/lit8 v10, v9, 0x1

    .local v10, "k":I
    :goto_54
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v11

    if-ge v10, v11, :cond_10a

    .line 60
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_106

    .line 61
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v11

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v12

    sub-int/2addr v11, v12

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v12

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v13

    sub-int/2addr v12, v13

    mul-int v11, v11, v12

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v12

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v13

    sub-int/2addr v12, v13

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v13

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v14

    sub-int/2addr v13, v14

    mul-int v12, v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-float v11, v11

    .line 63
    .local v11, "tWidth":F
    cmpl-float v12, v11, v2

    if-lez v12, :cond_106

    .line 64
    move v2, v11

    .line 65
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v12

    int-to-float v12, v12

    iput v12, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    .line 66
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v12

    int-to-float v12, v12

    iput v12, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    .line 68
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v12

    int-to-float v12, v12

    iput v12, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    .line 69
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v12

    int-to-float v12, v12

    iput v12, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    .line 71
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v12

    int-to-float v12, v12

    iput v12, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    .line 72
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v12

    int-to-float v12, v12

    iput v12, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    .line 74
    move v5, v9

    .line 75
    move v8, v10

    .line 59
    .end local v11    # "tWidth":F
    :cond_106
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_54

    .line 57
    .end local v10    # "k":I
    :cond_10a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3a

    .line 82
    .end local v9    # "j":I
    :cond_10e
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v3, v5, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget v9, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    iget v10, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_134

    .line 86
    iget v9, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    .line 87
    .local v9, "tSw":F
    iget v10, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    iput v10, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    .line 88
    iput v9, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    .line 90
    iget v9, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    .line 91
    iget v10, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    iput v10, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    .line 92
    iput v9, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    .line 95
    .end local v9    # "tSw":F
    :cond_134
    iget v9, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v10

    int-to-float v10, v10

    iget v12, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    sub-float/2addr v10, v12

    const v12, 0x3ecccccd    # 0.4f

    mul-float v10, v10, v12

    add-float/2addr v9, v10

    .line 96
    .local v9, "tfX":F
    iget v10, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v13

    int-to-float v13, v13

    iget v14, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    sub-float/2addr v13, v14

    mul-float v13, v13, v12

    add-float/2addr v10, v13

    .line 97
    .local v10, "tfY":F
    iget v13, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v14

    int-to-float v14, v14

    iget v15, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    sub-float/2addr v14, v15

    mul-float v14, v14, v12

    add-float/2addr v13, v14

    .line 98
    .local v13, "tfX2":F
    iget v14, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v15

    int-to-float v15, v15

    iget v7, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    sub-float/2addr v15, v7

    mul-float v15, v15, v12

    add-float/2addr v14, v15

    .line 100
    .local v14, "tfY2":F
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v12, 0x4

    mul-int/lit8 v7, v7, 0x4

    .line 101
    .local v7, "iPrecision":I
    new-array v15, v7, [Lcom/badlogic/gdx/math/Vector2;

    .line 103
    .local v15, "vPoints":[Lcom/badlogic/gdx/math/Vector2;
    const/4 v12, 0x5

    new-array v12, v12, [Lcom/badlogic/gdx/math/Vector2;

    .line 104
    .local v12, "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    new-instance v11, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v11, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v11, v12, v6

    .line 105
    new-instance v11, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v11, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/16 v18, 0x1

    aput-object v11, v12, v18

    .line 106
    new-instance v11, Lcom/badlogic/gdx/math/Vector2;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v6

    int-to-float v6, v6

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v19

    move/from16 v20, v2

    .end local v2    # "maxWidth":F
    .local v20, "maxWidth":F
    invoke-virtual/range {v19 .. v19}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v11, v6, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v2, 0x2

    aput-object v11, v12, v2

    .line 107
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2, v13, v14}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v6, 0x3

    aput-object v2, v12, v6

    .line 108
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2, v13, v14}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v6, 0x4

    aput-object v2, v12, v6

    .line 110
    const/4 v2, 0x1

    .line 112
    .local v2, "isInProvince":Z
    new-instance v6, Lcom/badlogic/gdx/math/CatmullRomSpline;

    const/4 v11, 0x0

    invoke-direct {v6, v12, v11}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    .line 114
    .local v6, "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    const/16 v16, 0x0

    move/from16 v11, v16

    .local v11, "j":I
    :goto_1d6
    if-ge v11, v7, :cond_1fa

    .line 115
    new-instance v16, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct/range {v16 .. v16}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v16, v15, v11

    .line 116
    move/from16 v16, v2

    .end local v2    # "isInProvince":Z
    .local v16, "isInProvince":Z
    aget-object v2, v15, v11

    move-object/from16 v17, v3

    .end local v3    # "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .local v17, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    int-to-float v3, v11

    move/from16 v19, v4

    .end local v4    # "checkedWidthNum":I
    .local v19, "checkedWidthNum":I
    int-to-float v4, v7

    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v4, v4, v21

    div-float/2addr v3, v4

    invoke-virtual {v6, v2, v3}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    .line 114
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v19

    goto :goto_1d6

    .end local v16    # "isInProvince":Z
    .end local v17    # "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v19    # "checkedWidthNum":I
    .restart local v2    # "isInProvince":Z
    .restart local v3    # "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v4    # "checkedWidthNum":I
    :cond_1fa
    move/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v19, v4

    .line 119
    .end local v2    # "isInProvince":Z
    .end local v3    # "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v4    # "checkedWidthNum":I
    .end local v11    # "j":I
    .restart local v16    # "isInProvince":Z
    .restart local v17    # "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v19    # "checkedWidthNum":I
    array-length v2, v15

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "j":I
    :goto_203
    if-ltz v2, :cond_268

    .line 120
    aget-object v3, v15, v2

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v3, v3

    aget-object v4, v15, v2

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v4, v4

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v3

    if-ne v3, v0, :cond_265

    aget-object v3, v15, v2

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    aget-object v4, v15, v2

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v4, v4

    .line 121
    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v3

    if-ne v3, v0, :cond_265

    aget-object v3, v15, v2

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v3, v4

    aget-object v4, v15, v2

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v4, v4

    .line 122
    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v3

    if-ne v3, v0, :cond_265

    aget-object v3, v15, v2

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v3, v3

    aget-object v4, v15, v2

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v4, v4

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v11

    .line 123
    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v3

    if-ne v3, v0, :cond_265

    aget-object v3, v15, v2

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v3, v3

    aget-object v4, v15, v2

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v4, v4

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v11

    .line 124
    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v3

    if-eq v3, v0, :cond_262

    goto :goto_265

    .line 119
    :cond_262
    add-int/lit8 v2, v2, -0x1

    goto :goto_203

    .line 126
    :cond_265
    :goto_265
    const/4 v3, 0x0

    .line 127
    .end local v16    # "isInProvince":Z
    .local v3, "isInProvince":Z
    move v2, v3

    goto :goto_26a

    .line 119
    .end local v3    # "isInProvince":Z
    .restart local v16    # "isInProvince":Z
    :cond_268
    move/from16 v2, v16

    .line 131
    .end local v16    # "isInProvince":Z
    .local v2, "isInProvince":Z
    :goto_26a
    if-eqz v2, :cond_270

    .line 132
    const/4 v4, -0x1

    .line 133
    .end local v19    # "checkedWidthNum":I
    .restart local v4    # "checkedWidthNum":I
    move/from16 v2, v20

    goto :goto_27b

    .line 135
    .end local v2    # "isInProvince":Z
    .end local v4    # "checkedWidthNum":I
    .end local v5    # "iID":I
    .end local v6    # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    .end local v7    # "iPrecision":I
    .end local v8    # "jID":I
    .end local v9    # "tfX":F
    .end local v10    # "tfY":F
    .end local v12    # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .end local v13    # "tfX2":F
    .end local v14    # "tfY2":F
    .end local v15    # "vPoints":[Lcom/badlogic/gdx/math/Vector2;
    .restart local v19    # "checkedWidthNum":I
    :cond_270
    move-object/from16 v3, v17

    move/from16 v4, v19

    move/from16 v2, v20

    const/4 v6, 0x0

    goto/16 :goto_24

    .line 48
    .end local v17    # "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v19    # "checkedWidthNum":I
    .end local v20    # "maxWidth":F
    .local v2, "maxWidth":F
    .local v3, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v4    # "checkedWidthNum":I
    :cond_279
    move-object/from16 v17, v3

    .line 137
    .end local v3    # "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v17    # "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :goto_27b
    if-lez v4, :cond_284

    .line 139
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_289

    .line 142
    :cond_284
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :goto_289
    return-void
.end method

.method public static clearProvNameData(I)V
    .registers 3
    .param p0, "i"    # I

    .line 165
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 166
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 168
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawMatrix4:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fontScale:F

    .line 170
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawAngleLow:F

    .line 172
    :cond_39
    return-void
.end method

.method public static final declared-synchronized drawProvName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 14
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "i"    # I
    .param p2, "extraX"    # I

    const-class v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;

    monitor-enter v0

    .line 634
    :try_start_3
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a2

    if-nez v1, :cond_d

    .line 635
    monitor-exit v0

    return-void

    .line 639
    :cond_d
    :try_start_d
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    .line 641
    .local v1, "provinceName":Laoc/kingdoms/lukasz/map/province/ProvinceNameData;
    iget v2, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fontScale:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v2, v2, v3

    .line 643
    .local v2, "fontScale":F
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_NAMES_SCALE:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_9e

    .line 644
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 646
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v3

    add-int/2addr p2, v3

    .line 648
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceNameLength_Minus1:I

    .local v3, "j":I
    :goto_46
    if-ltz v3, :cond_9e

    .line 649
    nop

    .line 650
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceNameUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawPoints:Ljava/util/List;

    .line 651
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    add-int/2addr v4, p2

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v8, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 652
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v4

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawPoints:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v9, v4

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawMatrix4:Ljava/util/List;

    .line 653
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/badlogic/gdx/math/Matrix4;

    .line 649
    const/4 v6, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextRotatedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/math/Matrix4;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_9b} :catch_9f
    .catchall {:try_start_d .. :try_end_9b} :catchall_a2

    .line 648
    add-int/lit8 v3, v3, -0x1

    goto :goto_46

    .line 659
    .end local v1    # "provinceName":Laoc/kingdoms/lukasz/map/province/ProvinceNameData;
    .end local v2    # "fontScale":F
    .end local v3    # "j":I
    :cond_9e
    goto :goto_a0

    .line 656
    :catch_9f
    move-exception v1

    .line 660
    :goto_a0
    monitor-exit v0

    return-void

    .line 633
    .end local p0    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .end local p1    # "i":I
    .end local p2    # "extraX":I
    :catchall_a2
    move-exception p0

    monitor-exit v0

    goto :goto_a6

    :goto_a5
    throw p0

    :goto_a6
    goto :goto_a5
.end method

.method public static final drawProvNamePoints(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 9
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "i"    # I

    .line 680
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d0

    .line 681
    sget-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->firstPoint:Z

    if-eqz v0, :cond_15

    sget-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->centerPoint:Z

    if-nez v0, :cond_15

    .line 682
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 684
    :cond_15
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v3, v0, -0x1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x3

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 685
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 686
    sget-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->centerPoint:Z

    if-eqz v0, :cond_55

    .line 687
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 689
    :cond_55
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v3, v0, -0x1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x3

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 690
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 691
    sget-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->firstPoint:Z

    if-nez v0, :cond_99

    sget-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->centerPoint:Z

    if-nez v0, :cond_99

    .line 692
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 694
    :cond_99
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v3, v0, -0x1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x3

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 695
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 697
    :cond_d0
    return-void
.end method

.method public static final declared-synchronized drawProvName_Medium(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 13
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "i"    # I
    .param p2, "extraX"    # I

    const-class v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;

    monitor-enter v0

    .line 663
    :try_start_3
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b0

    if-nez v1, :cond_d

    .line 664
    monitor-exit v0

    return-void

    .line 667
    :cond_d
    :try_start_d
    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fontScale:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    .line 669
    .local v1, "fontScale":F
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_NAMES_SCALE:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_ae

    .line 670
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceNameUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 673
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v2

    add-int/2addr v2, p2

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawPoints:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    mul-float v2, v2, v4

    float-to-int v7, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 674
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawPoints:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v8, v2

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    .line 675
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v9, v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawAngleLow:F

    .line 672
    const/4 v5, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextRotatedBorder_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IIF)V
    :try_end_ae
    .catchall {:try_start_d .. :try_end_ae} :catchall_b0

    .line 677
    :cond_ae
    monitor-exit v0

    return-void

    .line 662
    .end local v1    # "fontScale":F
    .end local p0    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .end local p1    # "i":I
    .end local p2    # "extraX":I
    :catchall_b0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized drawProvName_Old(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 12
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "i"    # I
    .param p2, "extraX"    # I

    const-class v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;

    monitor-enter v0

    .line 607
    :try_start_3
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_c6

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c6

    .line 608
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fontScale:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 610
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v1

    add-int/2addr p2, v1

    .line 612
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceNameLength_Minus1:I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_46} :catch_ca
    .catchall {:try_start_3 .. :try_end_46} :catchall_c7

    .local v1, "j":I
    :goto_46
    if-ltz v1, :cond_c6

    .line 614
    :try_start_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceNameUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    .line 615
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawPoints:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    add-int/2addr v2, p2

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v6, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 616
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v7, v2

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    .line 617
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawMatrix4:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/badlogic/gdx/math/Matrix4;

    .line 614
    const/4 v4, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextRotatedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/math/Matrix4;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_c1} :catch_c2
    .catchall {:try_start_48 .. :try_end_c1} :catchall_c7

    .line 625
    goto :goto_c3

    .line 623
    :catch_c2
    move-exception v2

    .line 612
    :goto_c3
    add-int/lit8 v1, v1, -0x1

    goto :goto_46

    .line 630
    .end local v1    # "j":I
    :cond_c6
    goto :goto_cb

    .line 606
    .end local p0    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .end local p1    # "i":I
    .end local p2    # "extraX":I
    :catchall_c7
    move-exception p0

    monitor-exit v0

    throw p0

    .line 628
    .restart local p0    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .restart local p1    # "i":I
    .restart local p2    # "extraX":I
    :catch_ca
    move-exception v1

    .line 631
    :goto_cb
    monitor-exit v0

    return-void
.end method

.method public static final drawProvNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 2
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 421
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvinceNames:Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$DrawProvinceNames;

    invoke-interface {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$DrawProvinceNames;->drawProvNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 424
    goto :goto_a

    .line 422
    :catch_6
    move-exception v0

    .line 423
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 425
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_a
    return-void
.end method

.method public static final declared-synchronized drawProvNames_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    const-class v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;

    monitor-enter v0

    .line 458
    :try_start_3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->textureProvince_Names:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v1, :cond_2b

    .line 459
    sget v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->lastPosX:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    if-ne v1, v2, :cond_20

    sget v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->lastPosY:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    if-ne v1, v2, :cond_20

    .line 460
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->drawProvinceNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto/16 :goto_a7

    .line 463
    :cond_20
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->disposeProvinceNamesTexture()V

    .line 464
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->disposeProvinceNamesFBO()V

    .line 466
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames_Just_Default(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto/16 :goto_a7

    .line 470
    :cond_2b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->updateFBO()V

    .line 472
    sget v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboNumToGenerate_Names:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->FBO_NUM_TO_GENERATE_NAMES:I

    if-lt v1, v2, :cond_a4

    .line 473
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboNumToGenerate_Names:I

    .line 475
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 477
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->disposeProvinceNamesFBO()V

    .line 478
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->disposeProvinceNamesTexture()V

    .line 480
    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    .line 482
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->begin()V

    .line 483
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 485
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    .line 486
    .local v2, "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v4, v4, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 488
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames_Just_Default_Inner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 490
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 492
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 493
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->end()V

    .line 495
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->getColorBufferTexture()Lcom/badlogic/gdx/graphics/GLTexture;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Texture;

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->textureProvince_Names:Lcom/badlogic/gdx/graphics/Texture;

    .line 497
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboPosX:I

    .line 498
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboPosY:I

    .line 500
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 502
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->textureProvince_Names:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v1, :cond_a3

    .line 503
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->drawProvinceNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 505
    .end local v2    # "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    :cond_a3
    goto :goto_a7

    .line 507
    :cond_a4
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames_Just_Default(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a7} :catch_aa
    .catchall {:try_start_3 .. :try_end_a7} :catchall_a8

    .line 512
    :goto_a7
    goto :goto_ae

    .line 457
    .end local p0    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    :catchall_a8
    move-exception p0

    goto :goto_b0

    .line 510
    .restart local p0    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    :catch_aa
    move-exception v1

    .line 511
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_ab
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_a8

    .line 513
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_ae
    monitor-exit v0

    return-void

    .line 457
    .end local p0    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    :goto_b0
    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized drawProvNames_Just_Default(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    const-class v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;

    monitor-enter v0

    .line 430
    :try_start_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    .line 431
    .local v1, "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_NAMES_ALPHA:F

    sget v5, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    mul-float v4, v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 433
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames_Just_Default_Inner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 435
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2e

    .line 436
    monitor-exit v0

    return-void

    .line 429
    .end local v1    # "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    .end local p0    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    :catchall_2e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final drawProvNames_Just_Default_Inner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_10

    .line 445
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 448
    .end local v0    # "i":I
    :cond_10
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_11
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_25

    .line 449
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    invoke-static {p0, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_26

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 453
    .end local v0    # "i":I
    :cond_25
    goto :goto_2a

    .line 451
    :catch_26
    move-exception v0

    .line 452
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 454
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2a
    return-void
.end method

.method public static final declared-synchronized drawProvNames_Just_Medium(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    const-class v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;

    monitor-enter v0

    .line 546
    :try_start_3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->textureProvince_Names:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v1, :cond_2b

    .line 547
    sget v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->lastPosX:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    if-ne v1, v2, :cond_20

    sget v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->lastPosY:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    if-ne v1, v2, :cond_20

    .line 548
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->drawProvinceNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto/16 :goto_a7

    .line 551
    :cond_20
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->disposeProvinceNamesTexture()V

    .line 552
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->disposeProvinceNamesFBO()V

    .line 554
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames_Just_Medium_Default(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto/16 :goto_a7

    .line 558
    :cond_2b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->updateFBO()V

    .line 560
    sget v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboNumToGenerate_Names:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->FBO_NUM_TO_GENERATE_NAMES:I

    if-lt v1, v2, :cond_a4

    .line 561
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboNumToGenerate_Names:I

    .line 563
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 565
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->disposeProvinceNamesFBO()V

    .line 566
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->disposeProvinceNamesTexture()V

    .line 568
    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    .line 570
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->begin()V

    .line 571
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 573
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    .line 574
    .local v2, "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v4, v4, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 576
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames_Just_Medium_Default_Inner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 578
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 580
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 581
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->end()V

    .line 583
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->getColorBufferTexture()Lcom/badlogic/gdx/graphics/GLTexture;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Texture;

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->textureProvince_Names:Lcom/badlogic/gdx/graphics/Texture;

    .line 585
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboPosX:I

    .line 586
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboPosY:I

    .line 588
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 590
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->textureProvince_Names:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v1, :cond_a3

    .line 591
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->drawProvinceNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 593
    .end local v2    # "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    :cond_a3
    goto :goto_a7

    .line 595
    :cond_a4
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames_Just_Medium_Default(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a7} :catch_aa
    .catchall {:try_start_3 .. :try_end_a7} :catchall_a8

    .line 600
    :goto_a7
    goto :goto_ae

    .line 545
    .end local p0    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    :catchall_a8
    move-exception p0

    goto :goto_b0

    .line 598
    .restart local p0    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    :catch_aa
    move-exception v1

    .line 599
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_ab
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_a8

    .line 601
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_ae
    monitor-exit v0

    return-void

    .line 545
    .end local p0    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    :goto_b0
    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized drawProvNames_Just_Medium_Default(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    const-class v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;

    monitor-enter v0

    .line 518
    :try_start_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    .line 519
    .local v1, "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_NAMES_ALPHA:F

    sget v5, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    mul-float v4, v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 521
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames_Just_Medium_Default_Inner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 523
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2e

    .line 524
    monitor-exit v0

    return-void

    .line 517
    .end local v1    # "oldTransformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    .end local p0    # "oSB":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    :catchall_2e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final drawProvNames_Just_Medium_Default_Inner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 532
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_10

    .line 533
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvName_Medium(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 536
    .end local v0    # "i":I
    :cond_10
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_11
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_25

    .line 537
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    invoke-static {p0, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvName_Medium(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_26

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 541
    .end local v0    # "i":I
    :cond_25
    goto :goto_2a

    .line 539
    :catch_26
    move-exception v0

    .line 540
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 542
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2a
    return-void
.end method

.method public static final updateDrawProvinceNames()V
    .registers 2

    .line 372
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_NAMES:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1e

    .line 373
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_NAMES:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 374
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$2;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$2;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvinceNames:Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$DrawProvinceNames;

    goto :goto_25

    .line 392
    :cond_16
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$3;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$3;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvinceNames:Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$DrawProvinceNames;

    goto :goto_25

    .line 411
    :cond_1e
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$4;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$4;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvinceNames:Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$DrawProvinceNames;

    .line 415
    :goto_25
    return-void
.end method
