.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "EditorMapProvinceNamePoints.java"


# static fields
.field public static centerPoint:Z

.field public static firstPoint:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->firstPoint:Z

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->centerPoint:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 21

    .line 34
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v10, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints$1;

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v7, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v8, v1, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v1, v10

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints$1;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints$2;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v16, v2, v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v17, v2, v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v18, v2, 0x2

    const/16 v19, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, -0x1

    move-object v11, v1

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v19}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints$2;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 64
    return-void
.end method

.method public static keyUp(I)Z
    .registers 15
    .param p0, "keycode"    # I

    .line 114
    const/16 v0, 0x3e

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_e

    .line 115
    sget-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->firstPoint:Z

    xor-int/2addr v0, v2

    sput-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->firstPoint:Z

    .line 116
    sput-boolean v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->centerPoint:Z

    .line 117
    return v2

    .line 120
    :cond_e
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_18

    .line 121
    sget-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->centerPoint:Z

    xor-int/2addr v0, v2

    sput-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->centerPoint:Z

    .line 122
    return v2

    .line 125
    :cond_18
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_50b

    .line 126
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4a7

    .line 127
    const/16 v0, 0x2e

    const/4 v3, 0x3

    if-ne p0, v0, :cond_45

    .line 128
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_NAMES:I

    if-ne v0, v3, :cond_37

    .line 129
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    const/4 v4, 0x2

    iput v4, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_NAMES:I

    goto :goto_3b

    .line 132
    :cond_37
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iput v3, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_NAMES:I

    .line 135
    :goto_3b
    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints$3;

    const-string v4, "updateDrawProvinceNames"

    invoke-direct {v0, v4}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints$3;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 144
    :cond_45
    sget-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->centerPoint:Z

    const/16 v4, 0x14

    const/16 v5, 0x13

    const/16 v6, 0x16

    const/16 v7, 0x15

    const/16 v8, 0x2f

    const/16 v9, 0x33

    const/16 v10, 0x20

    const/16 v11, 0x1d

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, -0x40800000    # -1.0f

    if-eqz v0, :cond_169

    .line 145
    if-ne p0, v7, :cond_6e

    .line 146
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v7, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    add-float/2addr v7, v13

    iput v7, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    .line 148
    :cond_6e
    if-ne p0, v6, :cond_7f

    .line 149
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    add-float/2addr v6, v12

    iput v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    .line 151
    :cond_7f
    if-ne p0, v5, :cond_90

    .line 152
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v5, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    add-float/2addr v5, v13

    iput v5, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    .line 154
    :cond_90
    if-ne p0, v4, :cond_a1

    .line 155
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    add-float/2addr v4, v12

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    .line 158
    :cond_a1
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    if-eqz v0, :cond_107

    .line 159
    if-ne p0, v11, :cond_bd

    .line 160
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, -0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    .line 162
    :cond_bd
    if-ne p0, v10, :cond_d5

    .line 163
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, 0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    .line 165
    :cond_d5
    if-ne p0, v9, :cond_ed

    .line 166
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, -0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    .line 168
    :cond_ed
    if-ne p0, v8, :cond_382

    .line 169
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, 0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    goto/16 :goto_382

    .line 173
    :cond_107
    if-ne p0, v11, :cond_11f

    .line 174
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v5, v5, -0x3

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    .line 176
    :cond_11f
    if-ne p0, v10, :cond_137

    .line 177
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    .line 179
    :cond_137
    if-ne p0, v9, :cond_14f

    .line 180
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v5, v5, -0x3

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    .line 182
    :cond_14f
    if-ne p0, v8, :cond_382

    .line 183
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v5, v5, 0x3

    int-to-float v3, v5

    add-float/2addr v4, v3

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    goto/16 :goto_382

    .line 187
    :cond_169
    sget-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->firstPoint:Z

    if-eqz v0, :cond_279

    .line 188
    if-ne p0, v7, :cond_17e

    .line 189
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v7, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    add-float/2addr v7, v13

    iput v7, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    .line 191
    :cond_17e
    if-ne p0, v6, :cond_18f

    .line 192
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    add-float/2addr v6, v12

    iput v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    .line 194
    :cond_18f
    if-ne p0, v5, :cond_1a0

    .line 195
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v5, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    add-float/2addr v5, v13

    iput v5, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    .line 197
    :cond_1a0
    if-ne p0, v4, :cond_1b1

    .line 198
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    add-float/2addr v4, v12

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    .line 201
    :cond_1b1
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    if-eqz v0, :cond_217

    .line 202
    if-ne p0, v11, :cond_1cd

    .line 203
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, -0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    .line 205
    :cond_1cd
    if-ne p0, v10, :cond_1e5

    .line 206
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, 0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    .line 208
    :cond_1e5
    if-ne p0, v9, :cond_1fd

    .line 209
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, -0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    .line 211
    :cond_1fd
    if-ne p0, v8, :cond_382

    .line 212
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, 0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    goto/16 :goto_382

    .line 216
    :cond_217
    if-ne p0, v11, :cond_22f

    .line 217
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v5, v5, -0x3

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    .line 219
    :cond_22f
    if-ne p0, v10, :cond_247

    .line 220
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    .line 222
    :cond_247
    if-ne p0, v9, :cond_25f

    .line 223
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v5, v5, -0x3

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    .line 225
    :cond_25f
    if-ne p0, v8, :cond_382

    .line 226
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v5, v5, 0x3

    int-to-float v3, v5

    add-float/2addr v4, v3

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    goto/16 :goto_382

    .line 232
    :cond_279
    if-ne p0, v7, :cond_28a

    .line 233
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v7, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    add-float/2addr v7, v13

    iput v7, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    .line 235
    :cond_28a
    if-ne p0, v6, :cond_29b

    .line 236
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    add-float/2addr v6, v12

    iput v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    .line 238
    :cond_29b
    if-ne p0, v5, :cond_2ac

    .line 239
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v5, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    add-float/2addr v5, v13

    iput v5, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    .line 241
    :cond_2ac
    if-ne p0, v4, :cond_2bd

    .line 242
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    add-float/2addr v4, v12

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    .line 245
    :cond_2bd
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    if-eqz v0, :cond_322

    .line 246
    if-ne p0, v11, :cond_2d9

    .line 247
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, -0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    .line 249
    :cond_2d9
    if-ne p0, v10, :cond_2f1

    .line 250
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, 0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    .line 252
    :cond_2f1
    if-ne p0, v9, :cond_309

    .line 253
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, -0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    .line 255
    :cond_309
    if-ne p0, v8, :cond_382

    .line 256
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, 0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    goto :goto_382

    .line 260
    :cond_322
    if-ne p0, v11, :cond_33a

    .line 261
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v5, v5, -0x3

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    .line 263
    :cond_33a
    if-ne p0, v10, :cond_352

    .line 264
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    .line 266
    :cond_352
    if-ne p0, v9, :cond_36a

    .line 267
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v5, v5, -0x3

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    .line 269
    :cond_36a
    if-ne p0, v8, :cond_382

    .line 270
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v5, v5, 0x3

    int-to-float v3, v5

    add-float/2addr v4, v3

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    .line 275
    :cond_382
    :goto_382
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_41b

    .line 276
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_391

    .line 277
    return v2

    .line 280
    :cond_391
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    .line 281
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    .line 282
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    .line 283
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    .line 284
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    .line 285
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    .line 289
    :cond_41b
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_49c

    .line 290
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    .line 291
    .local v0, "tSw":F
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    iput v4, v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    .line 292
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iput v0, v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    .line 294
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v0, v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    .line 295
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    iput v4, v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    .line 296
    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iput v0, v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    .line 298
    sget-boolean v3, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->firstPoint:Z

    xor-int/2addr v3, v2

    sput-boolean v3, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->firstPoint:Z

    .line 301
    .end local v0    # "tSw":F
    :cond_49c
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->clearProvNameData(I)V

    .line 302
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->buildProvNameData(IZ)V

    .line 303
    return v2

    .line 306
    :cond_4a7
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;-><init>()V

    .line 308
    .local v0, "newProvinceName":Laoc/kingdoms/lukasz/map/province/ProvinceNameData;
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    .line 309
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    .line 311
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    .line 312
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    .line 314
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    .line 315
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    .line 317
    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v2, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->clearProvNameData(I)V

    .line 320
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->buildProvNameData(IZ)V

    .line 324
    .end local v0    # "newProvinceName":Laoc/kingdoms/lukasz/map/province/ProvinceNameData;
    :cond_50b
    return v1
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 68
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBIG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    add-int/2addr v0, p3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v4, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v5, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v6, v0, v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 69
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBIG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    add-int/2addr v0, p3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v4, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v5, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v6, v0, v2

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 71
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->drawEditorText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 72
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 74
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboNumToGenerate_Names:I

    .line 75
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->disposeProvinceNamesTexture()V

    .line 76
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->disposeProvinceNamesFBO()V

    .line 77
    return-void
.end method

.method public final drawEditorText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 10
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I

    .line 82
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_22

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PROVINCE NAME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "sText":Ljava/lang/String;
    goto :goto_24

    .line 85
    .end local v0    # "sText":Ljava/lang/String;
    :cond_22
    const-string v0, "SELECT PROVINCE"

    .line 88
    .restart local v0    # "sText":Ljava/lang/String;
    :goto_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n W A S D x3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n CTRL + W A S D x15"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n ARROWS x1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n SPACE -> Change Point MODE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n C -> Center Point ON/OFF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n P -> RESET"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    sget-boolean v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->centerPoint:Z

    if-eqz v1, :cond_ae

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n MODE -> CENTER POINT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d9

    .line 97
    :cond_ae
    sget-boolean v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->firstPoint:Z

    if-eqz v1, :cond_c6

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n MODE -> LEFT POINT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d9

    .line 100
    :cond_c6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n MODE -> RIGHT POINT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :goto_d9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, v2, v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 105
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 106
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, p3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v4, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-static {p1, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 107
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 108
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v2, p3

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 109
    return-void
.end method
