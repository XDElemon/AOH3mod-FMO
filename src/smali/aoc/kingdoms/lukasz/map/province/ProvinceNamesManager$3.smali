.class Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$3;
.super Ljava/lang/Object;
.source "ProvinceNamesManager.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager$DrawProvinceNames;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->updateDrawProvinceNames()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawProvNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 394
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1a

    .line 395
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FBO_PROVINCE_NAMES:Z

    if-eqz v0, :cond_16

    .line 396
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_21

    .line 398
    :cond_16
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames_Just_Default(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_21

    .line 402
    :cond_1a
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawCitiesHideAnimation:Z

    if-eqz v0, :cond_21

    .line 403
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames_Just_Default(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 406
    :cond_21
    :goto_21
    return-void
.end method
