.class public Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;
.super Ljava/lang/Object;
.source "ProvinceDrawArmy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;,
        Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawArmyINT;
    }
.end annotation


# static fields
.field public static ARMY_HEIGHT:I = 0x0

.field public static final ARMY_PADDING_X:I = 0x5

.field public static final COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

.field public static final COLOR_ARMY2:Lcom/badlogic/gdx/graphics/Color;

.field public static final COLOR_ARMY_OLD:Lcom/badlogic/gdx/graphics/Color;

.field public static DRAW_ARMY_ALPHA:F = 0.0f

.field public static final DRAW_ARMY_DEFAULT_ALPHA:F = 1.0f

.field public static DRAW_ARMY_MIN_SCALE_ANIMATION:F = 0.0f

.field public static DRAW_ARMY_TIME:J = 0x0L

.field public static DRAW_ARMY_TIME_HIDE:J = 0x0L

.field public static DRAW_CITIES_ALPHA:F = 0.0f

.field public static DRAW_CITIES_TIME:J = 0x0L

.field public static DRAW_CITIES_TIME_HIDE:J = 0x0L

.field public static DRAW_OCCUPIED_ALPHA:F = 0.0f

.field public static DRAW_OCCUPIED_TIME:J = 0x0L

.field public static DRAW_OCCUPIED_TIME_HIDE:J = 0x0L

.field public static DRAW_PROVINCE_NAMES_ALPHA:F = 0.0f

.field public static DRAW_PROVINCE_NAMES_TIME:J = 0x0L

.field public static DRAW_PROVINCE_NAMES_TIME_HIDE:J = 0x0L

.field public static final FLAG_PADDING_X:I = 0x3

.field public static final FLAG_PADDING_X_RIGHT:I = 0x2

.field public static final FLAG_PADDING_X_SUM:I = 0x5

.field public static final FLAG_PADDING_Y:I = 0x2

.field public static final HOVER_PADDING:I = 0x4

.field public static afStkDump:Z

.field private static airDrLastLogMs:J

.field private static airHqLastLogMs:J

.field private static airLastLogMs:J

.field public static airShapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

.field public static armyFlagPosHeight:I

.field public static armyFlagPosWidth:I

.field public static armyFlagPosX:I

.field public static armyFlagPosY:I

.field public static drawCitiesHideAnimation:Z

.field public static drawHideAnimation:Z

.field public static drawOccupiedHideAnimation:Z

.field public static drawProvinceArmyColorAlpha:Lcom/badlogic/gdx/graphics/Color;

.field public static drawProvinceArmyTextColor:Lcom/badlogic/gdx/graphics/Color;

.field public static drawProvinceNamesHideAnimation:Z

.field public static hqP2Ms:J

.field public static iAirCountCache:I

.field public static moraleBG:Lcom/badlogic/gdx/graphics/Color;

.field public static moraleGreen:Lcom/badlogic/gdx/graphics/Color;

.field private static msFxFrameDtMs:J

.field private static msFxPrevMs:J

.field public static nHdgLastMs:J

.field private static umAllMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 22
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f66e6e7

    const v2, 0x3f61e1e2

    const v3, 0x3f57d7d8

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    .line 23
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f75f5f6

    const v2, 0x3f6bebec

    invoke-direct {v0, v4, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY2:Lcom/badlogic/gdx/graphics/Color;

    .line 24
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f48c8c9

    const v2, 0x3e8c8c8d

    const v3, 0x3f5cdcdd

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY_OLD:Lcom/badlogic/gdx/graphics/Color;

    .line 26
    const/4 v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->ARMY_HEIGHT:I

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawHideAnimation:Z

    .line 43
    const v1, 0x3dcccccd    # 0.1f

    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    .line 44
    const-wide/16 v2, 0x0

    sput-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_TIME:J

    .line 45
    sput-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_TIME_HIDE:J

    .line 47
    const v5, 0x3e99999a    # 0.3f

    sput v5, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_MIN_SCALE_ANIMATION:F

    .line 49
    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawCitiesHideAnimation:Z

    .line 50
    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    .line 51
    sput-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_TIME:J

    .line 52
    sput-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_TIME_HIDE:J

    .line 54
    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceNamesHideAnimation:Z

    .line 55
    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    .line 56
    sput-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_TIME:J

    .line 57
    sput-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_TIME_HIDE:J

    .line 59
    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawOccupiedHideAnimation:Z

    .line 60
    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_ALPHA:F

    .line 61
    sput-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_TIME:J

    .line 62
    sput-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_TIME_HIDE:J

    .line 475
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3d808081

    const v2, 0x3dd0d0d1

    invoke-direct {v0, v1, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->moraleBG:Lcom/badlogic/gdx/graphics/Color;

    .line 477
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3df0f0f1

    const v3, 0x3f028283

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->moraleGreen:Lcom/badlogic/gdx/graphics/Color;

    .line 479
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyColorAlpha:Lcom/badlogic/gdx/graphics/Color;

    .line 480
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyTextColor:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcHeading(FF)F
    .registers 10
    .param p0, "dx"    # F
    .param p1, "dy"    # F

    float-to-double v0, p1

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v2, v0

    neg-float v2, v2

    const/high16 v3, 0x43340000    # 180.0f

    add-float/2addr v2, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->nHdgLastMs:J

    sub-long v4, v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->nHdgLastMs:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nHdg:d="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AIRDBG"

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return v2
.end method

.method private static calcRadarRy(II)I
    .registers 8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x45866000    # 4300.0f

    sub-float v1, v1, v2

    div-float v1, v1, v2

    const v2, 0x3fc90fdb

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_24

    move v1, v2

    :cond_24
    const/high16 v2, 0x3e800000    # 0.25f

    cmpl-float v3, v1, v2

    if-gez v3, :cond_2b

    move v1, v2

    :cond_2b
    int-to-float v4, p1

    mul-float v4, v4, v1

    float-to-int v4, v4

    return v4

    :cond_30
    return p1
.end method

.method private static calcRadarRy(Laoc/kingdoms/lukasz/map/province/Province;I)I
    .registers 8

    move-object v0, p0

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x45866000    # 4300.0f

    sub-float v1, v1, v2

    div-float v1, v1, v2

    const v2, 0x3fc90fdb

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_21

    move v1, v2

    :cond_21
    const/high16 v2, 0x3e800000    # 0.25f

    cmpl-float v3, v1, v2

    if-gez v3, :cond_28

    move v1, v2

    :cond_28
    int-to-float v4, p1

    mul-float v4, v4, v1

    float-to-int v4, v4

    return v4

    :cond_2d
    return p1
.end method

.method public static dbgDr(Ljava/lang/String;Laoc/kingdoms/lukasz/map/battles/AirMission;II)V
    .registers 16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->airLastLogMs:J

    sub-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_61

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->airLastLogMs:J

    const/4 v0, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    if-eqz p1, :cond_23

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v0

    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevProvinceID:I

    iget v3, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    :cond_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "r114 dr k="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " st="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pv="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " at="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AIRDBG"

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return-void
.end method

.method private static drawAirCount(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 10
    .param p0, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "posX"    # I
    .param p2, "posY"    # I

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->iAirCountCache:I

    if-lez v0, :cond_23

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static/range {v1 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :cond_23
    return-void
.end method

.method public static airSelRingDraw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/lang/String;)V
    .registers 12
    # r6d071 A5: thin sharp gold ring (1:1 assets) for the ACTIVE air division; center=(x+20,y+20)
    if-eqz p3, :asr_ret
    const-string v0, "airhq_"
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v6
    if-eqz v6, :asr_ret
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getActiveDivKey()Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :asr_ret
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :asr_ret
    invoke-static {p3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getKeyOrd(Ljava/lang/String;)I
    move-result v6
    const/4 v2, 0x2
    if-ne v6, v2, :asr_s
    sget v6, Laoc/kingdoms/lukasz/textures/Images;->ringSel112:I
    const/16 v7, 0x70
    goto :asr_img
    :asr_s
    sget v6, Laoc/kingdoms/lukasz/textures/Images;->ringSel84:I
    const/16 v7, 0x54
    :asr_img
    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;
    move-result-object v0
    if-eqz v0, :asr_ret
    div-int/lit8 v6, v7, 0x2
    add-int/lit8 v2, p1, 0x14
    sub-int/2addr v2, v6
    add-int/lit8 v3, p2, 0x14
    sub-int/2addr v3, v6
    move v4, v7
    move v5, v7
    move-object v1, p0
    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :asr_ret
    return-void
.end method
.method public static final drawAirDivisionAsPlane(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/lang/String;)V
    .registers 16
    # r6d067 A5：选中空军编队 ⇒ 画金环
    invoke-static {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->airSelRingDraw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/lang/String;)V

    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nX"    # I
    .param p2, "nY"    # I
    .param p3, "sKey"    # Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v10, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->airDrLastLogMs:J

    sub-long v0, v0, v10

    long-to-int v0, v0

    const/16 v10, 0x3e8

    if-lt v0, v10, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->airDrLastLogMs:J

    :cond_14
    const/4 v1, 0x0

    invoke-static {p3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirMissionByKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v2

    if-eqz v2, :cond_7e

    iget-object v3, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v3

    const/4 v0, 0x1

    if-eq v3, v0, :cond_2c

    const/4 v0, 0x3

    if-eq v3, v0, :cond_2c

    const/4 v0, 0x2

    if-eq v3, v0, :cond_2c

    goto/16 :goto_1b4

    :cond_2c
    iget v5, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevProvinceID:I

    if-ltz v5, :cond_1b4

    iget v6, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-eq v5, v6, :cond_1b4

    iget v7, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegAnimMs:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v8

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v9

    invoke-static {v6, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v10

    invoke-static {v6, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v11

    sub-int v0, v10, v8

    sub-int v1, v11, v9

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->calcHeading(FF)F

    move-result v0

    invoke-static {v2, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->smoothHeading(Laoc/kingdoms/lukasz/map/battles/AirMission;F)F

    move-result v1

    mul-int/lit8 v7, v7, 0x64

    iget v0, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegDurMs:I

    if-lez v0, :cond_63

    div-int v7, v7, v0

    goto :goto_67

    :cond_63
    const/16 v0, 0x190

    div-int v7, v7, v0

    :goto_67
    const/16 v0, 0x64

    if-le v7, v0, :cond_6c

    move v7, v0

    :cond_6c
    sub-int v3, v10, v8

    mul-int v3, v3, v7

    div-int/lit8 v3, v3, 0x64

    add-int v3, v3, v8

    sub-int v4, v11, v9

    mul-int v4, v4, v7

    div-int/lit8 v4, v4, 0x64

    add-int v4, v4, v9

    move p1, v3

    move p2, v4

    :cond_7e
    invoke-static {p3, v2, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->dbgDr(Ljava/lang/String;Laoc/kingdoms/lukasz/map/battles/AirMission;II)V

    const/4 v0, 0x1

    if-eqz v2, :cond_8c

    iget-object v3, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz v3, :cond_8c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    :cond_8c
    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_94

    iget v10, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevProvinceID:I

    iget v11, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    :cond_94
    invoke-static {p3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getKeyOrd(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    if-eqz v2, :cond_a2

    iget v5, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getRingImageId(I)I

    move-result v9

    goto :goto_aa

    :cond_a2
    invoke-static {p3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getKeyCiv(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getRingImageId(I)I

    move-result v9

    :goto_aa
    if-ne v10, v11, :cond_be

    move v3, v9

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    move-object v4, p0

    add-int/lit8 v5, p1, -0x1e

    add-int/lit8 v6, p2, -0x1e

    const/16 v7, 0x64

    const/16 v8, 0x64

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_cf

    :cond_be
    move v3, v9

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    move-object v4, p0

    add-int/lit8 v5, p1, -0x10

    add-int/lit8 v6, p2, -0x10

    const/16 v7, 0x48

    const/16 v8, 0x48

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_cf
    if-ne v10, v11, :cond_e5

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->airBomber:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    move-object v4, p0

    add-int/lit8 v5, p1, -0xa

    add-int/lit8 v6, p2, -0xa

    const/16 v7, 0x3c

    const/16 v8, 0x3c

    move v9, v1

    invoke-virtual/range {v3 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->drawFullCenter(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    goto :goto_120

    :cond_e5
    const/4 v9, 0x0

    if-ne v10, v9, :cond_fa

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->airInterceptor:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    move-object v4, p0

    move v5, p1

    move v6, p2

    const/16 v7, 0x28

    const/16 v8, 0x28

    move v9, v1

    invoke-virtual/range {v3 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->drawFullCenter(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    goto :goto_120

    :cond_fa
    const/4 v9, 0x3

    if-ne v10, v9, :cond_10f

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->airAttacker:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    move-object v4, p0

    move v5, p1

    move v6, p2

    const/16 v7, 0x28

    const/16 v8, 0x28

    move v9, v1

    invoke-virtual/range {v3 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->drawFullCenter(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    goto :goto_120

    :cond_10f
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->airFighter:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    move-object v4, p0

    move v5, p1

    move v6, p2

    const/16 v7, 0x28

    const/16 v8, 0x28

    move v9, v1

    invoke-virtual/range {v3 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->drawFullCenter(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    :goto_120
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirHpLevelFromPool(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v9

    const/4 v4, 0x0

    if-eq v9, v4, :cond_13f

    const/4 v4, 0x1

    if-eq v9, v4, :cond_142

    const/4 v4, 0x2

    if-eq v9, v4, :cond_145

    const/4 v4, 0x3

    if-eq v9, v4, :cond_148

    const/4 v4, 0x4

    if-eq v9, v4, :cond_14b

    const/4 v4, 0x5

    if-eq v9, v4, :cond_14e

    const/4 v4, 0x6

    if-eq v9, v4, :cond_151

    const/4 v4, 0x7

    if-eq v9, v4, :cond_154

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->ringHP_8:I

    goto :goto_156

    :cond_13f
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->ringHP_0:I

    goto :goto_156

    :cond_142
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->ringHP_1:I

    goto :goto_156

    :cond_145
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->ringHP_2:I

    goto :goto_156

    :cond_148
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->ringHP_3:I

    goto :goto_156

    :cond_14b
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->ringHP_4:I

    goto :goto_156

    :cond_14e
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->ringHP_5:I

    goto :goto_156

    :cond_151
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->ringHP_6:I

    goto :goto_156

    :cond_154
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->ringHP_7:I

    :goto_156
    if-ne v10, v11, :cond_16b

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->ringHP_4:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    move-object v4, p0

    add-int/lit8 v5, p1, -0x10

    add-int/lit8 v6, p2, -0x10

    const/16 v7, 0x48

    const/16 v8, 0x48

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_17b

    :cond_16b
    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    move-object v4, p0

    add-int/lit8 v5, p1, -0x4

    add-int/lit8 v6, p2, -0x4

    const/16 v7, 0x30

    const/16 v8, 0x30

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_17b
    if-eqz v2, :cond_182

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getHpText(Laoc/kingdoms/lukasz/map/battles/AirMission;)Ljava/lang/String;

    move-result-object v2

    goto :goto_190

    :cond_182
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x1"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_190
    move-object v3, p0

    move-object v4, v2

    add-int/lit8 v5, p1, 0x14

    add-int/lit8 v6, p2, 0x41

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static/range {v3 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-static {p3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirMissionByKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v2

    if-eqz v2, :cond_1b4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v10, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->airLastLogMs:J

    sub-long v0, v0, v10

    long-to-int v0, v0

    const/16 v10, 0xfa

    if-lt v0, v10, :cond_1b4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->airLastLogMs:J

    :cond_1b4
    :goto_1b4
    return-void
.end method

.method public static final drawAirDivisions(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/map/battles/Airport;II)Z
    .registers 16
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "airport"    # Laoc/kingdoms/lukasz/map/battles/Airport;
    .param p2, "baseX"    # I
    .param p3, "baseY"    # I

    const/4 v0, 0x1

    return v0

    iget v0, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    if-eqz p1, :cond_99

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v6

    if-lez v6, :cond_99

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v6, :cond_97

    invoke-virtual {p1, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    if-eqz v9, :cond_93

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-eqz v9, :cond_93

    const-string v10, "airhq_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_93

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v10, 0x1

    const/4 v3, -0x1

    const/16 v2, 0x5

    if-eq v1, v2, :cond_34

    goto :goto_42

    :cond_34
    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :goto_42
    const/16 v0, 0x1c

    mul-int/2addr v0, v7

    sub-int v11, p3, v0

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getRingImageId(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    move-object v1, p0

    move v2, p2

    add-int/lit8 v2, v2, -0x49

    move v3, v11

    add-int/lit8 v3, v3, -0x1c

    const/16 v4, 0x38

    const/16 v5, 0x38

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    const/16 v3, 0x28

    const/4 v0, 0x2

    if-ne v10, v0, :cond_64

    const/16 v3, 0x38

    :cond_64
    if-eqz v10, :cond_6f

    const/4 v0, 0x1

    if-eq v10, v0, :cond_72

    const/4 v0, 0x2

    if-eq v10, v0, :cond_75

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airAttacker:I

    goto :goto_78

    :cond_6f
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airInterceptor:I

    goto :goto_78

    :cond_72
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airFighter:I

    goto :goto_78

    :cond_75
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airBomber:I

    goto :goto_78

    :goto_78
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    div-int/lit8 v1, v3, 0x2

    move v2, p2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x2d

    move v4, v3

    move v5, v3

    move v3, v11

    sub-int/2addr v3, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    move v0, p2

    add-int/lit8 v0, v0, -0x2d

    move-object v5, p0

    invoke-static {v5, v0, v11}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirCount(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    add-int/lit8 v7, v7, 0x1

    :cond_93
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_12

    :cond_97
    move v0, v7

    return v0

    :cond_99
    const/4 v0, 0x0

    return v0
.end method

.method public static final drawAirForce(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 25
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    :try_start_0
    const/16 v0, 0x302

    const/16 v1, 0x303

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    const-string v0, "AIRDBG"

    const-string v1, "dAF_IN"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirportIcons(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirForceRadarIcons(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirForceBuildingIcons(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirForceMissions(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAircraftRadar(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_ARMY_MIN_SCALE:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_16a

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirForceCircles(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirForceSelection(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirForceBuildingIcons(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_52
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/Airport;

    iget v7, v6, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v10

    invoke-virtual {v10, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportByProvinceID(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v10

    if-eqz v10, :cond_168

    invoke-static {v7, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v8

    invoke-static {v7, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v9

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->airUnit:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    move-object v11, v2

    move v12, v8

    add-int/lit8 v12, v12, -0xf

    move v13, v9

    add-int/lit8 v13, v13, -0xf

    const/16 v14, 0x24

    const/16 v15, 0x24

    invoke-virtual/range {v10 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget v7, v6, Laoc/kingdoms/lukasz/map/battles/Airport;->totalAircraft:I

    if-lez v7, :cond_168

    move-object v10, v2

    move-object v11, v6

    move v12, v8

    move v13, v9

    invoke-static/range {v10 .. v13}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirDivisions(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/map/battles/Airport;II)Z

    move-result v7

    if-nez v7, :cond_168

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->values()[Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    move-result-object v4

    array-length v12, v4

    const/4 v0, 0x0

    :goto_9a
    if-ge v0, v12, :cond_168

    iget-object v13, v6, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    aget-object v15, v4, v0

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_ab
    :goto_ab
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget-boolean v15, v13, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isAlive:Z

    if-eqz v15, :cond_ab

    iget-boolean v15, v13, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isInFlight:Z

    if-eqz v15, :cond_ab

    add-int/lit8 v7, v7, 0x1

    goto :goto_ab

    :cond_c2
    if-lez v7, :cond_164

    sput v7, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->iAirCountCache:I

    iget v14, v6, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getRingImageId(I)I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    move-object v12, v2

    move v13, v8

    add-int/lit8 v13, v13, -0x49

    move v14, v9

    add-int/lit8 v14, v14, -0x1c

    const/16 v15, 0x38

    const/16 v16, 0x38

    invoke-virtual/range {v11 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    if-eqz v0, :cond_eb

    const/4 v7, 0x1

    if-eq v0, v7, :cond_f0

    const/4 v7, 0x2

    if-eq v0, v7, :cond_f5

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->airAttacker:I

    const/16 v15, 0x28

    goto :goto_f9

    :cond_eb
    sget v14, Laoc/kingdoms/lukasz/textures/Images;->airInterceptor:I

    const/16 v15, 0x28

    goto :goto_f9

    :cond_f0
    sget v14, Laoc/kingdoms/lukasz/textures/Images;->airFighter:I

    const/16 v15, 0x28

    goto :goto_f9

    :cond_f5
    sget v14, Laoc/kingdoms/lukasz/textures/Images;->airBomber:I

    const/16 v15, 0x38

    :goto_f9
    invoke-static {v14}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    move-object v12, v2

    move v13, v8

    move/from16 v16, v15

    div-int/lit8 v17, v15, 0x2

    sub-int v13, v13, v17

    add-int/lit8 v13, v13, -0x2d

    move v14, v9

    sub-int v14, v14, v17

    add-int/lit8 v14, v14, -0x2d

    invoke-virtual/range {v11 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-static {v6, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirHpLevel(Laoc/kingdoms/lukasz/map/battles/Airport;I)I

    move-result v15

    if-eqz v15, :cond_12d

    const/4 v7, 0x1

    if-eq v15, v7, :cond_130

    const/4 v7, 0x2

    if-eq v15, v7, :cond_133

    const/4 v7, 0x3

    if-eq v15, v7, :cond_136

    const/4 v7, 0x4

    if-eq v15, v7, :cond_139

    const/4 v7, 0x5

    if-eq v15, v7, :cond_13c

    const/4 v7, 0x6

    if-eq v15, v7, :cond_13f

    const/4 v7, 0x7

    if-eq v15, v7, :cond_142

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->ringHP_8:I

    goto :goto_144

    :cond_12d
    sget v14, Laoc/kingdoms/lukasz/textures/Images;->ringHP_0:I

    goto :goto_144

    :cond_130
    sget v14, Laoc/kingdoms/lukasz/textures/Images;->ringHP_1:I

    goto :goto_144

    :cond_133
    sget v14, Laoc/kingdoms/lukasz/textures/Images;->ringHP_2:I

    goto :goto_144

    :cond_136
    sget v14, Laoc/kingdoms/lukasz/textures/Images;->ringHP_3:I

    goto :goto_144

    :cond_139
    sget v14, Laoc/kingdoms/lukasz/textures/Images;->ringHP_4:I

    goto :goto_144

    :cond_13c
    sget v14, Laoc/kingdoms/lukasz/textures/Images;->ringHP_5:I

    goto :goto_144

    :cond_13f
    sget v14, Laoc/kingdoms/lukasz/textures/Images;->ringHP_6:I

    goto :goto_144

    :cond_142
    sget v14, Laoc/kingdoms/lukasz/textures/Images;->ringHP_7:I

    :goto_144
    const/16 v15, 0x28

    invoke-static {v14}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    move-object v12, v2

    move v13, v8

    sub-int v13, v13, v15

    add-int/lit8 v13, v13, -0x2d

    move v14, v9

    sub-int v14, v14, v15

    add-int/lit8 v14, v14, -0x2d

    shl-int/lit8 v16, v15, 0x1

    shl-int/lit8 v15, v15, 0x1

    invoke-virtual/range {v11 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    move-object v10, v2

    move v11, v8

    add-int/lit8 v11, v11, -0x2d

    move v12, v9

    invoke-static/range {v10 .. v12}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirCount(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_164
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9a

    :cond_168
    goto/16 :goto_52

    :cond_16a
    return-void
    :try_end_16b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16b} :catch_16b

    :catch_16b
    move-exception v0

    sget-boolean v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->afStkDump:Z

    if-nez v1, :cond_17c

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AIRDBG_STK"

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    sput-boolean v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->afStkDump:Z

    :cond_17c
    const-string v1, "AIRDBG"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final drawAirForceBuildingIcons(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 12
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-object v0, p0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v1

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    if-eqz v2, :cond_51

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_11

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_23
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/Airport;

    iget v10, v9, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {v0, v1, v10}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawBuildingProvinceIcon(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/map/battles/AirForceManager;I)V

    goto :goto_23

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    if-eqz v2, :cond_51

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v1, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawBuildingProvinceIcon(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/map/battles/AirForceManager;I)V

    goto :goto_3d

    :cond_51
    return-void
.end method

.method public static final drawAirForceCircles(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 15
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    goto/16 :goto_a4

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->selectedAirportProvinceID:I

    if-ltz v0, :cond_a4

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a4

    const/4 v6, 0x0

    :goto_1d
    if-ge v6, v5, :cond_a4

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/Airport;

    iget v8, v7, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    if-ne v8, v0, :cond_2a

    goto :goto_2d

    :cond_2a
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :goto_2d
    move v0, v6

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Airport;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    iget v3, v1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {v3, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v3

    iget v4, v1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {v4, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v4

    const/16 v5, 0x7fff

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->values()[Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getActiveDivRange()F

    move-result v12

    const/high16 v13, 0x0

    cmpl-float v13, v12, v13

    if-lez v13, :cond_5b

    move v9, v12

    goto :goto_76

    :cond_5b
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager;->types:[Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;

    if-eqz v10, :cond_a4

    :goto_5f
    if-ge v8, v7, :cond_76

    const/4 v10, 0x1

    shl-int v10, v10, v8

    and-int v11, v5, v10

    if-eqz v11, :cond_73

    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager;->types:[Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;

    aget-object v10, v10, v8

    iget v11, v10, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->CombatRadius:F

    cmpl-float v10, v11, v9

    if-lez v10, :cond_73

    move v9, v11

    :cond_73
    add-int/lit8 v8, v8, 0x1

    goto :goto_5f

    :cond_76
    :goto_76
    mul-float v9, v9, v2

    const/high16 v10, 0x3e800000    # 0.25f

    mul-float v9, v9, v10

    move v0, v9

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float v10, v9, v10

    float-to-int v7, v0

    const/16 v0, 0x12c

    if-le v7, v0, :cond_87

    move v7, v0

    :cond_87
    sget-object v8, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->airCircle:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    move-object v9, p0

    move v10, v3

    sub-int v10, v10, v7

    move v11, v4

    sub-int v11, v11, v7

    shl-int/lit8 v12, v7, 0x1

    move v13, v12

    invoke-virtual/range {v8 .. v13}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v8, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_a4
    :goto_a4
    return-void
.end method

.method public static final drawAirForceMissions(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 16
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v0, :cond_117

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_117

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/AirMission;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->myOrDetectedMission(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirGunFx(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/map/battles/AirMission;)V

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirMissileFx(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/map/battles/AirMission;)V

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v2, :cond_2f

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    goto :goto_30

    :cond_2f
    const/4 v2, -0x1

    :goto_30
    iget v3, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v5

    const-string v6, "um_dl:h="

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":s="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":t="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":st="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v2, :cond_c

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    iget v3, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ltz v3, :cond_c

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    invoke-static {v2, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v5

    invoke-static {v2, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v6

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v7

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v8

    iget v10, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v10, v10, v12

    float-to-int v10, v10

    iget-object v11, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v13, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-ne v11, v13, :cond_90

    rsub-int v10, v10, 0x64

    :cond_90
    sub-int v9, v8, v6

    mul-int v9, v9, v10

    div-int/lit8 v9, v9, 0x64

    add-int/2addr v9, v6

    sub-int v8, v7, v5

    mul-int v8, v8, v10

    div-int/lit8 v8, v8, 0x64

    add-int/2addr v8, v5

    invoke-static {v2, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v12

    invoke-static {v2, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v13

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v10

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v11

    move v7, v12

    move v6, v13

    float-to-int v5, v4

    move v12, v7

    move v13, v6

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-ne v2, v3, :cond_bd

    move v12, v8

    move v13, v9

    move v10, v7

    move v11, v6

    :cond_bd
    if-eq v2, v3, :cond_cc

    const v2, 0x3f000000    # 0.5f

    const v3, 0x3f4ccccd    # 0.8f

    const v4, 0x3f800000    # 1.0f

    const v5, 0x3ee66666    # 0.45f

    goto :goto_d8

    :cond_cc
    const v2, 0x3f800000    # 1.0f

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3e051eb8    # 0.13f

    const v5, 0x3ee66666    # 0.45f

    :goto_d8
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v6, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    move-object v7, p0

    move v8, v12

    move v9, v13

    move v10, v10

    move v11, v11

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->isMyMission(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z

    move-result v2

    if-eqz v2, :cond_eb

    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->drawLinePts(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_eb
    const v2, 0x3f800000    # 1.0f

    const v3, 0x3f800000    # 1.0f

    const v4, 0x3f800000    # 1.0f

    const v5, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v12, v12

    int-to-float v13, v13

    invoke-direct {v3, v12, v13}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v10, v10

    int-to-float v11, v11

    invoke-direct {v3, v10, v11}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    goto/16 :goto_c

    :cond_117
    return-void
.end method

.method public static final drawAirForceRadar(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 16
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v11

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_be

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Airport;

    iget v2, v1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v13

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    iget v4, v1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {v4, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v4

    iget v5, v1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {v5, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v5

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x45866000    # 4300.0f

    sub-float v6, v6, v7

    div-float v6, v6, v7

    const v7, 0x3fc90fdb

    mul-float v6, v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v9, v6, v7

    if-lez v9, :cond_6d

    move v6, v7

    :cond_6d
    const/high16 v7, 0x3e800000    # 0.25f

    cmpl-float v9, v6, v7

    if-gez v9, :cond_74

    move v6, v7

    :cond_74
    iget v8, v1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-virtual {v13, v8}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v9

    if-nez v9, :cond_97

    invoke-virtual {v13, v8}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v9

    if-nez v9, :cond_97

    invoke-virtual {v13, v8}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasAAABuilding(I)Z

    move-result v9

    if-nez v9, :cond_97

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirportRadarPx(Laoc/kingdoms/lukasz/map/battles/Airport;F)I

    move-result v7

    if-lez v7, :cond_97

    move v9, v7

    int-to-float v7, v7

    mul-float v7, v7, v3

    mul-float v6, v6, v7

    float-to-int v6, v6

    float-to-int v7, v7

    goto :goto_99

    :cond_97
    goto/16 :goto_27

    :goto_99
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3f800000    # 1.0f

    invoke-virtual {p0, v11, v12, v13, v14}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->radarFill:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    move-object v9, p0

    sub-int v10, v4, v7

    sub-int v11, v5, v6

    shl-int/lit8 v12, v7, 0x1

    shl-int/lit8 v13, v6, 0x1

    invoke-virtual/range {v8 .. v13}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v14, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v14}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_27

    :cond_be
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    return-void
.end method

.method public static final drawAirForceRadarIcons(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 15
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    if-eqz v12, :cond_b

    :cond_b
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_130

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    if-eqz v2, :cond_15

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v4

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v5

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x45866000    # 4300.0f

    sub-float v6, v6, v7

    div-float v6, v6, v7

    const v7, 0x3fc90fdb

    mul-float v6, v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v9, v6, v7

    if-lez v9, :cond_57

    move v6, v7

    :cond_57
    const/high16 v7, 0x3e800000    # 0.25f

    cmpl-float v9, v6, v7

    if-gez v9, :cond_5e

    move v6, v7

    :cond_5e
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v7

    if-eqz v7, :cond_95

    const-string v8, "MIDCOURSE_ABM"

    invoke-static {v8}, Laoc/kingdoms/lukasz/map/battles/RadarDataManager;->getRange(Ljava/lang/String;)F

    move-result v7

    mul-float v7, v7, v3

    mul-float v2, v6, v7

    float-to-int v2, v2

    float-to-int v7, v7

    goto/16 :goto_101

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->radarFill:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f800000    # 1.0f

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    move-object v9, p0

    sub-int v10, v4, v7

    sub-int v11, v5, v2

    shl-int/lit8 v12, v7, 0x1

    shl-int/lit8 v13, v2, 0x1

    invoke-virtual/range {v8 .. v13}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_101

    :cond_95
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v7

    if-eqz v7, :cond_cb

    const-string v8, "RADAR"

    invoke-static {v8}, Laoc/kingdoms/lukasz/map/battles/RadarDataManager;->getRange(Ljava/lang/String;)F

    move-result v7

    mul-float v7, v7, v3

    mul-float v2, v6, v7

    float-to-int v2, v2

    float-to-int v7, v7

    goto :goto_101

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->radarFill:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f800000    # 1.0f

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    move-object v9, p0

    sub-int v10, v4, v7

    sub-int v11, v5, v2

    shl-int/lit8 v12, v7, 0x1

    shl-int/lit8 v13, v2, 0x1

    invoke-virtual/range {v8 .. v13}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_101

    :cond_cb
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasAAABuilding(I)Z

    move-result v7

    if-eqz v7, :cond_101

    const-string v8, "ABM_SITE"

    invoke-static {v8}, Laoc/kingdoms/lukasz/map/battles/RadarDataManager;->getRange(Ljava/lang/String;)F

    move-result v7

    mul-float v7, v7, v3

    mul-float v2, v6, v7

    float-to-int v2, v2

    float-to-int v7, v7

    goto :goto_101

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->radarFill:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f800000    # 1.0f

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    move-object v9, p0

    sub-int v10, v4, v7

    sub-int v11, v5, v2

    shl-int/lit8 v12, v7, 0x1

    shl-int/lit8 v13, v2, 0x1

    invoke-virtual/range {v8 .. v13}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_101

    :cond_101
    :goto_101
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportByProvinceID(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v6

    if-eqz v6, :cond_10e

    add-int/lit8 v4, v4, 0x20

    goto :goto_110

    :cond_10e
    add-int/lit8 v4, v4, -0xe

    :goto_110
    add-int/lit8 v5, v5, -0xe

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v12

    invoke-virtual {v12, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v12

    if-eqz v12, :cond_11f

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->longwaveRadar:I

    goto :goto_121

    :cond_11f
    sget v6, Laoc/kingdoms/lukasz/textures/Images;->radarUnit:I

    :goto_121
    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    move-object v7, p0

    move v8, v4

    move v9, v5

    const/16 v10, 0x1c

    move v11, v10

    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_15

    :cond_130
    return-void
.end method

.method public static final drawAirForceSelection(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 15
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->selectedAirportProvinceID:I

    if-ltz v1, :cond_46

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-lez v6, :cond_46

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportByProvinceID(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v2

    if-eqz v2, :cond_46

    iget v1, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    invoke-static {v1, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v5

    invoke-static {v1, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v6

    const/16 v1, 0x6f

    sub-int v9, v5, v1

    const/16 v1, 0x42

    sub-int v10, v6, v1

    const/16 v11, 0x84

    const/16 v12, 0x84

    move-object v8, p0

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v9, v7, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    iget v10, v7, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {p0, v9, v10, v11}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyActive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    sget-object v13, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_46
    return-void
.end method

.method public static drawAirGunFx(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/map/battles/AirMission;)V
    .registers 16

    if-eqz p1, :cond_e9

    iget-object v11, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    sget-object v12, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->INTERCEPT:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-eq v11, v12, :cond_12

    sget-object v12, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->ATTACK_ARMY:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-eq v11, v12, :cond_29

    sget-object v12, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->STRATEGIC_BOMBING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-eq v11, v12, :cond_29

    goto/16 :goto_e9

    :cond_12
    iget-wide v2, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetMissionID:J

    const-wide/16 v4, 0x0

    cmp-long v11, v2, v4

    if-eqz v11, :cond_e9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airCombatLastMs:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4b0

    cmp-long v11, v2, v4

    if-gtz v11, :cond_e9

    const/4 v12, 0x0

    goto :goto_39

    :cond_29
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    iget-object v11, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v12, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EXECUTING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-ne v11, v12, :cond_e9

    iget v11, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->attackRoundsExecuted:I

    iget v12, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxAttackRounds:I

    if-ge v11, v12, :cond_e9

    :goto_39
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirSpriteX(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v11

    if-ltz v11, :cond_e9

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirSpriteY(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v12

    if-ltz v12, :cond_e9

    add-int/lit8 v11, v11, 0x14

    add-int/lit8 v12, v12, 0x14

    int-to-float v2, v11

    int-to-float v3, v12

    iget v4, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->dispHeading:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v0, v8

    neg-float v0, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v1, v8

    const v4, 0x41c00000    # 24.0f

    mul-float v5, v0, v4

    add-float v2, v2, v5

    mul-float v5, v1, v4

    add-float v3, v3, v5

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v11, :cond_81

    iget v12, v11, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v13, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-ne v12, v13, :cond_81

    move-object v4, p0

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f666666    # 0.9f

    const v7, 0x3e800000    # 0.25f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    goto :goto_8f

    :cond_81
    move-object v4, p0

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e800000    # 0.25f

    const v7, 0x3e800000    # 0.25f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    :goto_8f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xc8

    rem-long/2addr v4, v6

    long-to-int v9, v4

    int-to-float v4, v9

    const v5, 0x3ed70a3d    # 0.42f

    mul-float v4, v4, v5

    float-to-int v6, v4

    const/4 v7, 0x0

    :cond_9f
    mul-int/lit8 v11, v7, 0x7

    sub-int v11, v6, v11

    if-ltz v11, :cond_c3

    int-to-float v4, v11

    mul-float v5, v4, v0

    add-float v5, v2, v5

    float-to-int v10, v5

    mul-float v5, v4, v1

    add-float v5, v3, v5

    float-to-int v11, v5

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v11, -0x1

    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    move-object v9, p0

    const/16 v12, 0x2

    const/16 v13, 0x2

    invoke-virtual/range {v8 .. v13}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    add-int/lit8 v7, v7, 0x1

    const/4 v10, 0x5

    if-lt v7, v10, :cond_9f

    :cond_c3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->gunFxDbgMs:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v9, v4, v6

    if-ltz v9, :cond_dd

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->gunFxDbgMs:J

    const-string v9, "AIRDBG"

    const-string v10, "nGX fire"

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dd
    move-object v4, p0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    :cond_e9
    :goto_e9
    return-void
.end method

.method public static drawAirMissileFx(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/map/battles/AirMission;)V
    .registers 16

    if-eqz p1, :cond_15d

    iget v0, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15d

    iget-wide v2, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_15d

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v4

    if-eqz v4, :cond_15d

    iget-object v5, v4, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v5, :cond_15d

    const/4 v6, 0x0

    const/4 v2, 0x0

    :goto_1b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_36

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v7, :cond_33

    iget-wide v8, v7, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    iget-wide v10, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J

    cmp-long v12, v8, v10

    if-nez v12, :cond_33

    move-object v2, v7

    goto :goto_36

    :cond_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_36
    :goto_36
    iget v1, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v1, :cond_15d

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-eqz v0, :cond_15d

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirSpriteX(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v5

    if-gez v5, :cond_50

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v5

    if-gez v5, :cond_50

    goto/16 :goto_15d

    :cond_50
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirSpriteY(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v6

    if-gez v6, :cond_5e

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v6

    if-gez v6, :cond_5e

    goto/16 :goto_15d

    :cond_5e
    const/4 v7, -0x1

    if-eqz v2, :cond_67

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirSpriteX(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v7

    if-gez v7, :cond_78

    :cond_67
    const/4 v8, -0x1

    if-eqz v2, :cond_6c

    iget v8, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    :cond_6c
    if-gez v8, :cond_70

    iget v8, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTgtAt:I

    :cond_70
    if-ltz v8, :cond_15d

    invoke-static {v8, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v7

    if-ltz v7, :cond_15d

    :cond_78
    const/4 v8, -0x1

    if-eqz v2, :cond_81

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirSpriteY(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v8

    if-gez v8, :cond_92

    :cond_81
    const/4 v9, -0x1

    if-eqz v2, :cond_86

    iget v9, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    :cond_86
    if-gez v9, :cond_8a

    iget v9, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTgtAt:I

    :cond_8a
    if-ltz v9, :cond_15d

    invoke-static {v9, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v8

    if-ltz v8, :cond_15d

    :cond_92
    add-int/lit8 v5, v5, 0x14

    add-int/lit8 v6, v6, 0x14

    add-int/lit8 v7, v7, 0x14

    add-int/lit8 v8, v8, 0x14

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    if-eqz v0, :cond_15d

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v12

    int-to-float v13, v12

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v12

    int-to-float v11, v12

    int-to-float v12, v5

    div-float v12, v12, v3

    sub-float v12, v12, v13

    float-to-int v5, v12

    int-to-float v12, v6

    div-float v12, v12, v3

    sub-float v12, v12, v11

    float-to-int v6, v12

    int-to-float v12, v7

    div-float v12, v12, v3

    sub-float v12, v12, v13

    float-to-int v7, v12

    int-to-float v12, v8

    div-float v12, v12, v3

    sub-float v12, v12, v11

    float-to-int v8, v12

    iget v9, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxLastScale:F

    cmpl-float v10, v9, v3

    if-eqz v10, :cond_cb

    iput v3, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxLastScale:F

    const/4 v9, 0x0

    iput v9, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTN:I

    :cond_cb
    invoke-static {p1, v5, v6, v7, v8}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->msFxStep(Laoc/kingdoms/lukasz/map/battles/AirMission;IIII)V

    iget v0, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15d

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->msFxDrawTrail(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/map/battles/AirMission;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v0, :cond_ef

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-ne v1, v2, :cond_ef

    move-object v4, p0

    const v5, 0x3eb33333    # 0.35f

    const v6, 0x3f19999a    # 0.6f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v4 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    goto :goto_fd

    :cond_ef
    move-object v4, p0

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e99999a    # 0.3f

    const v7, 0x3e99999a    # 0.3f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v4 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    :goto_fd
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v11

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v13

    int-to-float v13, v13

    iget v0, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxX:F

    add-float v0, v0, v12

    mul-float v0, v0, v11

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x7

    iget v1, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxY:F

    add-float v1, v1, v13

    mul-float v1, v1, v11

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x7

    sget-object v5, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    move-object v6, p0

    move v7, v0

    move v8, v1

    const/16 v9, 0xe

    const/16 v10, 0xe

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    move-object v4, p0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v4 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-wide v0, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileMs:J

    iget-wide v2, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxDbgMs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_15d

    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nMS gx id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileMs:J

    iput-wide v0, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxDbgMs:J

    :cond_15d
    :goto_15d
    return-void
.end method

.method public static final drawAirMissionFlyingPlane(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILaoc/kingdoms/lukasz/map/battles/AirMission;)V
    .registers 13
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nX"    # I
    .param p2, "nY"    # I
    .param p3, "mission"    # Laoc/kingdoms/lukasz/map/battles/AirMission;

    iget-object v0, p3, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    return-void

    :cond_d
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airRingFriend:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    move-object v1, p0

    add-int/lit8 v2, p1, -0x8

    add-int/lit8 v3, p2, -0x8

    const/16 v4, 0x38

    const/16 v5, 0x38

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airFighter:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    const/16 v4, 0x28

    const/16 v5, 0x28

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->drawFull(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->ringHP_4:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    move-object v1, p0

    add-int/lit8 v2, p1, -0x4

    add-int/lit8 v3, p2, -0x4

    const/16 v4, 0x30

    const/16 v5, 0x30

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-object v2, p3, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz v2, :cond_4b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x1

    :goto_4c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, v3

    add-int/lit8 v2, p1, 0x14

    add-int/lit8 v3, p2, 0x41

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static/range {v0 .. v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static final drawAircraftRadar(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 17
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-object/from16 v14, p0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_c2

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v0, :cond_c2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v1, :cond_c2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/AirMission;

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->isMyMission(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v3, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v3, :cond_14

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    iget v4, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ltz v4, :cond_14

    iget v5, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v5, :cond_14

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v15

    iget v13, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevProvinceID:I

    if-ltz v13, :cond_73

    if-eq v13, v5, :cond_73

    invoke-static {v13, v15}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v8

    invoke-static {v13, v15}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v9

    invoke-static {v5, v15}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v10

    invoke-static {v5, v15}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v11

    iget v7, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegAnimMs:I

    mul-int/lit8 v7, v7, 0x64

    iget v4, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegDurMs:I

    if-lez v4, :cond_5b

    div-int v7, v7, v4

    goto :goto_5f

    :cond_5b
    const/16 v4, 0x190

    div-int v7, v7, v4

    :goto_5f
    const/16 v4, 0x64

    if-le v7, v4, :cond_64

    move v7, v4

    :cond_64
    sub-int v10, v10, v8

    mul-int v10, v10, v7

    div-int/lit8 v10, v10, 0x64

    add-int/2addr v10, v8

    sub-int v11, v11, v9

    mul-int v11, v11, v7

    div-int/lit8 v11, v11, 0x64

    add-int/2addr v11, v9

    goto :goto_7b

    :cond_73
    invoke-static {v5, v15}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v10

    invoke-static {v5, v15}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v11

    :goto_7b
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v12, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    if-eqz v12, :cond_14

    invoke-static {v12}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getKeyOrd(Ljava/lang/String;)I

    move-result v13

    if-ltz v13, :cond_14

    const/4 v12, 0x4

    if-ge v13, v12, :cond_14

    sget-object v12, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager;->types:[Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;

    if-eqz v12, :cond_14

    aget-object v12, v12, v13

    iget v12, v12, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->RadarRange:F

    mul-float v12, v12, v15

    if-eqz v3, :cond_14

    float-to-int v12, v12

    invoke-static {v3, v12}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->calcRadarRy(Laoc/kingdoms/lukasz/map/province/Province;I)I

    move-result v13

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3de978d5    # 0.114f

    invoke-virtual {v14, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->radarFill:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    move-object v7, v14

    sub-int v8, v10, v12

    sub-int v9, v11, v13

    shl-int/lit8 v10, v12, 0x1

    shl-int/lit8 v11, v13, 0x1

    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v14, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_14

    :cond_c2
    return-void
.end method

.method public static final drawAirportIcons(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 16
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    if-eqz v14, :cond_32

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AIDBG airports="

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->airUnit:I

    const-string v11, " airUnit="

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_32

    :cond_32
    :goto_32
    if-eqz v0, :cond_7e

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3c

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/Airport;

    iget v4, v3, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v6

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->airUnit:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    move-object v9, p0

    move v10, v6

    add-int/lit8 v10, v10, -0xf

    move v11, v7

    add-int/lit8 v11, v11, -0xf

    const/16 v12, 0x24

    move v13, v12

    invoke-virtual/range {v8 .. v13}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_4e

    :cond_7e
    return-void
.end method

.method private static drawBuildingProvinceIcon(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/map/battles/AirForceManager;I)V
    .registers 16
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "mgr"    # Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    .param p2, "provinceID"    # I

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasAAABuilding(I)Z

    move-result v6

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v12

    invoke-static {p2, v12}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v9

    invoke-static {p2, v12}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v10

    const/16 v2, 0x1a

    sub-int v2, v9, v2

    const/16 v3, 0x3c

    sub-int v3, v10, v3

    const/16 v4, 0x35

    const/16 v5, 0x2d

    move-object v1, p0

    if-eqz v6, :cond_2e

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->antiAir:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_2e
    if-eqz v7, :cond_45

    const/16 v2, 0x1a

    sub-int v2, v9, v2

    const/16 v3, 0x1a

    add-int v3, v10, v3

    const/16 v4, 0x35

    const/16 v5, 0x2d

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->longwaveRadar:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_45
    return-void
.end method

.method public static final drawMapModeDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 3
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirForce(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 370
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_ARMY_MIN_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5b

    .line 371
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_22

    .line 372
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 375
    .end local v0    # "i":I
    :cond_22
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_23
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_35

    .line 376
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawDetailsSea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 379
    .end local v0    # "i":I
    :cond_35
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_36
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_48

    .line 380
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 383
    .end local v0    # "i":I
    :cond_48
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_49
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_5b

    .line 384
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 387
    .end local v0    # "i":I
    :cond_5b
    return-void
.end method

.method private static final drawProvinceArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .registers 14
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I
    .param p4, "ImageID"    # I
    .param p5, "inRetreat"    # Z

    .line 511
    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 513
    if-eqz p5, :cond_3c

    .line 514
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyRetreat:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int v1, p1, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyLeft:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->armyRetreat:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 516
    :cond_3c
    return-void
.end method

.method public static final drawProvinceArmyActive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 7
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nProvinceID"    # I
    .param p2, "nArmyID"    # I
    .param p3, "fAlpha"    # F

    .line 678
    if-ltz p2, :cond_45

    :try_start_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v0

    if-ge p2, v0, :cond_45

    .line 679
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    mul-float v1, v1, p3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 680
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosX(II)I

    move-result v0

    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosY(II)I

    move-result v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyWidth:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyWidth(I)I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyActive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 681
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3f} :catch_40

    goto :goto_45

    .line 683
    :catch_40
    move-exception v0

    .line 684
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_46

    .line 685
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_45
    :goto_45
    nop

    .line 686
    :goto_46
    return-void
.end method

.method private static final drawProvinceArmyActive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 13
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I

    # r6d077：仅当"当前选中的是空军编队"时跳过陆军金框
    # 依据：getActiveDivKey() 读 Game.activeArmy[0]，陆军选中时同样非空 ⇒
    #      必须再用 airhq_ 前缀区分"选中态是否为空军"（陆军 key 无此前缀）
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getActiveDivKey()Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :dpa_draw

    const-string v1, "airhq_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    if-eqz v1, :dpa_draw
    return-void
    :dpa_draw
    .line 704
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyActive:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int/lit8 v3, p1, -0x4

    add-int/lit8 v4, p2, -0x4

    add-int/lit8 v0, p3, 0x8

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyActive:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int v5, v0, v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyActive:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 705
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyActive:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v0, p1, p3

    add-int/lit8 v0, v0, 0x4

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyActive:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int v3, v0, v2

    add-int/lit8 v4, p2, -0x4

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyActive:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyActive:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 706
    return-void
.end method

.method private static final drawProvinceArmyFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 12
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nCivID"    # I
    .param p4, "ImageID"    # I

    .line 519
    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/lit8 v4, v1, 0x5

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 521
    if-gez p3, :cond_43

    .line 522
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rebelsFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int/lit8 v3, p1, 0x3

    add-int/lit8 v4, p2, 0x2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_67

    .line 525
    :cond_43
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int/lit8 v3, p1, 0x3

    add-int/lit8 v4, p2, 0x2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 528
    :goto_67
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int/lit8 v1, p1, 0x3

    add-int/lit8 v2, p2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 529
    return-void
.end method

.method private static final drawProvinceArmyFlag_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 11
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nCivID"    # I

    .line 532
    if-gez p3, :cond_19

    .line 533
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rebelsFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->armyFlagPosX:I

    add-int v3, p1, v0

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->armyFlagPosY:I

    add-int v4, p2, v0

    sget v5, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->armyFlagPosWidth:I

    sget v6, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->armyFlagPosHeight:I

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_31

    .line 536
    :cond_19
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->armyFlagPosX:I

    add-int v3, p1, v0

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->armyFlagPosY:I

    add-int v4, p2, v0

    sget v5, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->armyFlagPosWidth:I

    sget v6, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->armyFlagPosHeight:I

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 538
    :goto_31
    return-void
.end method

.method public static final drawProvinceArmyHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 7
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nProvinceID"    # I
    .param p2, "nArmyID"    # I
    .param p3, "fAlpha"    # F

    .line 621
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    mul-float v1, v1, p3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 622
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosX(II)I

    move-result v0

    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosY(II)I

    move-result v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyWidth:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyWidth(I)I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 623
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 624
    return-void
.end method

.method public static final drawProvinceArmyHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 13
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I

    .line 689
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyHover:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int/lit8 v3, p1, -0x4

    add-int/lit8 v4, p2, -0x4

    add-int/lit8 v0, p3, 0x8

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyHover:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int v5, v0, v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyHover:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 690
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyHover:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v0, p1, p3

    add-int/lit8 v0, v0, 0x4

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyHover:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int v3, v0, v2

    add-int/lit8 v4, p2, -0x4

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyHover:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyHover:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 695
    return-void
.end method

.method public static final drawProvinceArmyHover_Units(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 11
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I

    .line 698
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyHover:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int/lit8 v3, p1, -0x4

    add-int/lit8 v4, p2, -0x4

    add-int/lit8 v0, p3, 0x8

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyHoverRight:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int v5, v0, v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyHover:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 699
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyHoverRight:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v0, p1, p3

    add-int/lit8 v0, v0, 0x4

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyHoverRight:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int v3, v0, v2

    add-int/lit8 v4, p2, -0x4

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyHoverRight:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyHoverRight:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 700
    return-void
.end method

.method public static final drawProvinceArmyHover_WithUnitsImages(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .registers 19
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nProvinceID"    # I
    .param p2, "nArmyID"    # I
    .param p3, "fAlpha"    # F

    .line 627
    move-object v6, p0

    move/from16 v7, p2

    invoke-static/range {p1 .. p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosX(II)I

    move-result v8

    .line 628
    .local v8, "nPosX":I
    invoke-static/range {p1 .. p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosY(II)I

    move-result v9

    .line 630
    .local v9, "nPosY":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 631
    .local v10, "tIDs":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v0, v1, :cond_99

    .line 632
    const/4 v1, 0x1

    .line 634
    .local v1, "add":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_20
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_67

    .line 635
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v3

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    if-ne v3, v4, :cond_64

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v3

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    if-ne v3, v4, :cond_64

    .line 636
    const/4 v1, 0x0

    .line 637
    goto :goto_67

    .line 634
    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 641
    .end local v2    # "j":I
    :cond_67
    :goto_67
    if-eqz v1, :cond_95

    .line 642
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    .end local v1    # "add":Z
    :cond_95
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_12

    .line 646
    .end local v0    # "i":I
    :cond_99
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyWidth:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyWidth(I)I

    move-result v11

    .line 647
    .local v11, "nWidth":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyUnitsFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    mul-int v12, v0, v1

    .line 649
    .local v12, "extraWidth":I
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    mul-float v1, v1, p3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 650
    add-int v0, v11, v12

    invoke-static {p0, v8, v9, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyHover_Units(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 651
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 653
    add-int/lit8 v0, v8, -0x5

    add-int v1, v0, v11

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyUnitsFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->armyAlly:I

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget-boolean v5, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    move-object v0, p0

    move v2, v9

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 656
    const/4 v0, 0x0

    move v13, v0

    .local v13, "j":I
    :goto_f7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_211

    .line 658
    add-int v0, v8, v11

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyUnitsFrame:I

    .line 659
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    mul-int v1, v1, v13

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, v9

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyUnitsFrame:I

    .line 661
    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->armyUnitsFrame:I

    .line 662
    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    neg-int v3, v3

    .line 658
    invoke-static {p0, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    .line 665
    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->armyImages:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->ImageID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyUnitsFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->armyImages:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->ImageID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    float-to-int v14, v0

    .line 667
    .local v14, "unitImgWidth":I
    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->armyImages:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->ImageID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyUnitsFrame:I

    .line 668
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v8

    div-int/lit8 v2, v14, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, v11

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyUnitsFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    mul-int v2, v2, v13

    add-int/2addr v2, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyUnitsFrame:I

    .line 669
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    .line 667
    move-object v1, p0

    move v3, v9

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 670
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 671
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyUnitsFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int v1, v8, v11

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyUnitsFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    mul-int v2, v2, v13

    add-int/2addr v1, v2

    invoke-virtual {v0, p0, v1, v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 656
    .end local v14    # "unitImgWidth":I
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_f7

    .line 674
    .end local v13    # "j":I
    :cond_211
    return-void
.end method

.method public static final drawProvinceArmyWithFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 13
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nProvinceID"    # I
    .param p2, "nArmyID"    # I

    .line 489
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosX(II)I

    move-result v0

    .line 490
    .local v0, "nPosX":I
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosY(II)I

    move-result v6

    .line 492
    .local v6, "nPosY":I
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    .line 493
    .local v7, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v7, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    .line 495
    .local v8, "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    iget-object v1, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-eqz v1, :cond_45

    move-object v3, v1

    invoke-static {v1, v8}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->airDrawAsPlane(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->airHqLastLogMs:J

    sub-long v1, v1, v4

    long-to-int v1, v1

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_32

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->airHqLastLogMs:J

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    :cond_32
    if-eqz v7, :cond_3e

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3e

    invoke-static {v7, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->logArmyList(Laoc/kingdoms/lukasz/map/province/Province;I)V

    :cond_3e
    invoke-static {p1, p2, v0, v6, v8}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->hqP2(IIIILjava/lang/Object;)V

    invoke-static {p0, v0, v6, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirDivisionAsPlane(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/lang/String;)V

    return-void

    :cond_45
    iget v1, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {p0, v0, v6, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyFlag_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 496
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->armyLeft3:Ljava/util/List;

    iget v2, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMoraleDraw:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1, p0, v0, v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 498
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyLeft3_Width:I

    add-int v9, v0, v1

    .line 500
    .end local v0    # "nPosX":I
    .local v9, "nPosX":I
    iget v0, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyWidth:I

    add-int/lit8 v3, v0, 0xa

    iget v0, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    .line 502
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    iget-boolean v5, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 500
    move-object v0, p0

    move v1, v9

    move v2, v6

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 504
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_ARMY:I

    iget-object v2, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->sArmy:Ljava/lang/String;

    iget v0, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyExtraPosX:I

    add-int/2addr v0, v9

    add-int/lit8 v3, v0, 0x5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyLeft:I

    .line 506
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v6

    sget v5, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->ARMY_HEIGHT:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    float-to-int v4, v5

    sub-int v4, v0, v4

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyTextColor:Lcom/badlogic/gdx/graphics/Color;

    .line 504
    move-object v0, p0

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 508
    return-void
.end method

.method public static final drawProvinceArmyWithFlag_Shadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;FLjava/lang/String;II)V
    .registers 20
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nProvinceID"    # I
    .param p2, "armyColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p3, "fAlpha"    # F
    .param p4, "sArmy"    # Ljava/lang/String;
    .param p5, "iArmyWidth"    # I
    .param p6, "extraY"    # I

    .line 592
    move-object v7, p0

    move-object v8, p2

    move/from16 v9, p3

    :try_start_4
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosX_Shadow(I)I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyMorale:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    add-int v1, v1, p5

    add-int/lit8 v1, v1, 0xa

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 593
    .local v0, "nPosX":I
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosY_Shadow(I)I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    mul-int v2, v2, p6

    add-int v10, v1, v2

    .line 595
    .local v10, "nPosY":I
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v1, v11, v11, v11, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 597
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyLeft:I

    invoke-static {p0, v0, v10, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 599
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->moraleBG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->moraleBG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->moraleBG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 600
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v3, v2, 0x5

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyMorale:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyMorale:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p0

    move v4, v10

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 602
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v11, v11, v11, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 603
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyMorale:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x5

    add-int/lit8 v4, p5, 0xa

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->army:I

    const/4 v6, 0x0

    move-object v1, p0

    move v3, v10

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 607
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_ARMY:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyMorale:I

    .line 608
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x5

    add-int/lit8 v4, v1, 0x5

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyLeft:I

    .line 609
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v1, v10

    sget v5, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->ARMY_HEIGHT:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    float-to-int v3, v5

    sub-int v5, v1, v3

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    iget v1, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v11, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v12, v8, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v12, v12, v9

    invoke-direct {v6, v1, v3, v11, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 607
    move-object v1, p0

    move-object/from16 v3, p4

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 612
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_fa} :catch_fb

    .line 615
    .end local v0    # "nPosX":I
    .end local v10    # "nPosY":I
    goto :goto_ff

    .line 613
    :catch_fb
    move-exception v0

    .line 614
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 616
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_ff
    return-void
.end method

.method public static final drawProvinceArmy_Units(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILcom/badlogic/gdx/graphics/Color;F)V
    .registers 14
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nProvinceID"    # I
    .param p2, "nArmyID"    # I
    .param p3, "armyColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p4, "fAlpha"    # F

    .line 544
    :try_start_0
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosX(II)I

    move-result v0

    .line 545
    .local v0, "nPosX":I
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosY(II)I

    move-result v1

    .line 547
    .local v1, "nPosY":I
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    .line 549
    .local v2, "province":Laoc/kingdoms/lukasz/map/province/Province;
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v4, v4, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 551
    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    .line 552
    .local v3, "uID":I
    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    .line 553
    .local v5, "aID":I
    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    .line 555
    .local v4, "numOfUnits":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_42
    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v6, v7, :cond_10a

    .line 556
    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    if-ne v3, v7, :cond_7b

    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    if-ne v5, v7, :cond_7b

    .line 557
    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_78} :catch_110

    add-int/2addr v4, v7

    goto/16 :goto_106

    .line 562
    :cond_7b
    :try_start_7b
    sget v7, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v8

    neg-int v8, v8

    invoke-static {p0, v0, v1, v7, v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    .line 563
    sget-object v7, Laoc/kingdoms/lukasz/map/army/ArmyManager;->armyImages:Ljava/util/List;

    sget-object v8, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->ImageID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/textures/Image;

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v8

    invoke-virtual {v7, p0, v0, v1, v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 564
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_bb} :catch_bc

    .line 567
    goto :goto_c0

    .line 565
    :catch_bc
    move-exception v7

    .line 566
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_bd
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 569
    .end local v7    # "ex":Ljava/lang/Exception;
    :goto_c0
    sget v7, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7, p0, v0, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 571
    sget v7, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    add-int/2addr v0, v7

    .line 573
    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    move v3, v7

    .line 574
    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    move v5, v7

    .line 575
    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    move v4, v7

    .line 555
    :goto_106
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_42

    .line 582
    .end local v6    # "i":I
    :cond_10a
    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_10f} :catch_110

    .line 585
    .end local v0    # "nPosX":I
    .end local v1    # "nPosY":I
    .end local v2    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v3    # "uID":I
    .end local v4    # "numOfUnits":I
    .end local v5    # "aID":I
    goto :goto_111

    .line 583
    :catch_110
    move-exception v0

    .line 586
    :goto_111
    return-void
.end method

.method public static final drawProvincesArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 3
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirForce(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 260
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_ARMY_MIN_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_16

    .line 261
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvincesArmy_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto/16 :goto_91

    .line 264
    :cond_16
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    if-eqz v0, :cond_7c

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PEACE_VIEW:I

    if-eq v0, v1, :cond_7c

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INVEST_IN_ECONOMY:I

    if-eq v0, v1, :cond_7c

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_TAX_EFFICIENCY:I

    if-eq v0, v1, :cond_7c

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVELOP_INFRASTRUCTURE:I

    if-eq v0, v1, :cond_7c

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_GROWTH_RATE:I

    if-eq v0, v1, :cond_7c

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_MANPOWER:I

    if-eq v0, v1, :cond_7c

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CONVERT_RELIGION:I

    if-eq v0, v1, :cond_7c

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CORE:I

    if-eq v0, v1, :cond_7c

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    if-eq v0, v1, :cond_7c

    .line 275
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvincesArmy_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_91

    .line 277
    :cond_7c
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawHideAnimation:Z

    if-eqz v0, :cond_91

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_MIN_SCALE_ANIMATION:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_91

    .line 278
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvincesArmy_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 281
    :cond_91
    :goto_91
    return-void
.end method

.method private static final drawProvincesArmy_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 11
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fAlpha"    # F

    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-ge v0, v1, :cond_8a

    .line 287
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 288
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 290
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    if-gez v1, :cond_4f

    .line 291
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->removeActiveArmy(I)V

    goto :goto_86

    .line 294
    :cond_4f
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v1, :cond_86

    .line 295
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-static {p0, v1, v2, p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyActive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_86} :catch_8b

    .line 286
    :cond_86
    :goto_86
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 302
    .end local v0    # "i":I
    :cond_8a
    goto :goto_8c

    .line 300
    :catch_8b
    move-exception v0

    .line 305
    :goto_8c
    :try_start_8c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    if-ltz v0, :cond_e2

    .line 306
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->checkHoveredArmy_Fog()V

    .line 308
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 309
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 311
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v0, :cond_e2

    .line 312
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    if-ltz v0, :cond_e2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    if-ltz v0, :cond_e2

    .line 313
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-static {p0, v0, v1, p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_e2} :catch_e3

    .line 321
    :cond_e2
    goto :goto_e4

    .line 319
    :catch_e3
    move-exception v0

    .line 323
    :goto_e4
    :try_start_e4
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyColorAlpha:Lcom/badlogic/gdx/graphics/Color;

    .line 324
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyTextColor:Lcom/badlogic/gdx/graphics/Color;

    .line 326
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyColorAlpha:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_105} :catch_1a5

    .line 329
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_106
    :try_start_106
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_118

    .line 330
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_106

    .line 333
    .end local v0    # "i":I
    :cond_118
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_119
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_12b

    .line 334
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_119

    .line 337
    .end local v0    # "i":I
    :cond_12b
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_12c
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_13e

    .line 338
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_12c

    .line 341
    .end local v0    # "i":I
    :cond_13e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_13f
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_151

    .line 342
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_14e} :catch_152

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_13f

    .line 346
    .end local v0    # "i":I
    :cond_151
    goto :goto_156

    .line 344
    :catch_152
    move-exception v0

    .line 345
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_153
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 348
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_156
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_15b} :catch_1a5

    .line 351
    :try_start_15b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyShadows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_19f

    .line 352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_164
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyShadows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19f

    .line 353
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyShadows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;

    iget v3, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;->iProvinceID:I

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyShadows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;->sArmy:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyShadows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;

    iget v7, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;->iArmyWidth:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyShadows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;

    iget v8, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;->extraY:I

    const/high16 v5, 0x3f000000    # 0.5f

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyWithFlag_Shadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILcom/badlogic/gdx/graphics/Color;FLjava/lang/String;II)V
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_19c} :catch_1a0

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_164

    .line 358
    .end local v0    # "i":I
    :cond_19f
    goto :goto_1a4

    .line 356
    :catch_1a0
    move-exception v0

    .line 357
    .local v0, "exr":Ljava/lang/Exception;
    :try_start_1a1
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1a4} :catch_1a5

    .line 361
    .end local v0    # "exr":Ljava/lang/Exception;
    :goto_1a4
    goto :goto_1a9

    .line 359
    :catch_1a5
    move-exception v0

    .line 360
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 366
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1a9
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 367
    return-void
.end method

.method public static final getAirDrawPosX(IF)I
    .registers 5
    .param p0, "nProvinceID"    # I
    .param p1, "nScale"    # F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method public static final getAirDrawPosY(IF)I
    .registers 5
    .param p0, "nProvinceID"    # I
    .param p1, "nScale"    # F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private static getAirHpLevel(Laoc/kingdoms/lukasz/map/battles/Airport;I)I
    .registers 10
    .param p0, "airport"    # Laoc/kingdoms/lukasz/map/battles/Airport;
    .param p1, "typeIdx"    # I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    if-eqz v0, :cond_44

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->values()[Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_44

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/high16 v2, 0x0

    const/4 v3, 0x0

    :cond_19
    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget-boolean v6, v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isAlive:Z

    if-eqz v6, :cond_19

    iget-boolean v6, v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isInFlight:Z

    if-nez v6, :cond_19

    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    add-float v2, v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_34
    if-lez v3, :cond_44

    int-to-float v4, v3

    div-float v2, v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float v2, v2, v4

    float-to-int v2, v2

    const/16 v4, 0x8

    if-le v2, v4, :cond_43

    move v2, v4

    :cond_43
    return v2

    :cond_44
    const/4 v2, 0x0

    return v2
.end method

.method private static getAirHpLevelFromPool(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_23

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxPoolHP:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_23

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->fPoolHP:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxPoolHP:F

    div-float v1, v1, v2

    const v2, 0x41000000    # 8.0f

    mul-float v1, v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float v1, v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_1f

    move v1, v2

    :cond_1f
    if-gez v1, :cond_22

    const/4 v1, 0x0

    :cond_22
    return v1

    :cond_23
    return v0
.end method

.method public static getAirSpriteX(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 11

    if-eqz p0, :cond_77

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v1, :cond_77

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-eqz v3, :cond_77

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevProvinceID:I

    if-ltz v0, :cond_45

    if-eq v0, v1, :cond_45

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_20

    const/4 v3, 0x3

    if-eq v2, v3, :cond_20

    const/4 v3, 0x2

    if-eq v2, v3, :cond_20

    goto :goto_45

    :cond_20
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegAnimMs:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegDurMs:I

    if-gtz v3, :cond_2a

    const/16 v3, 0x190

    :cond_2a
    div-int/2addr v2, v3

    const/16 v3, 0x64

    if-le v2, v3, :cond_30

    move v2, v3

    :cond_30
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v4

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v5

    sub-int v6, v5, v4

    mul-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x64

    add-int/2addr v6, v4

    return v6

    :cond_45
    :goto_45
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    if-eqz v2, :cond_6c

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    if-eqz v3, :cond_6c

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    const/4 v5, 0x0

    :goto_54
    if-ge v5, v4, :cond_6c

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    if-eqz v6, :cond_69

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    invoke-static {v1, v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosX(II)I

    move-result v0

    return v0

    :cond_69
    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    :cond_6c
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v0

    return v0

    :cond_77
    const/4 v0, -0x1

    return v0
.end method

.method public static getAirSpriteY(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 11

    if-eqz p0, :cond_77

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v1, :cond_77

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-eqz v3, :cond_77

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevProvinceID:I

    if-ltz v0, :cond_45

    if-eq v0, v1, :cond_45

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_20

    const/4 v3, 0x3

    if-eq v2, v3, :cond_20

    const/4 v3, 0x2

    if-eq v2, v3, :cond_20

    goto :goto_45

    :cond_20
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegAnimMs:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegDurMs:I

    if-gtz v3, :cond_2a

    const/16 v3, 0x190

    :cond_2a
    div-int/2addr v2, v3

    const/16 v3, 0x64

    if-le v2, v3, :cond_30

    move v2, v3

    :cond_30
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v4

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v5

    sub-int v6, v5, v4

    mul-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x64

    add-int/2addr v6, v4

    return v6

    :cond_45
    :goto_45
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    if-eqz v2, :cond_6c

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    if-eqz v3, :cond_6c

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    const/4 v5, 0x0

    :goto_54
    if-ge v5, v4, :cond_6c

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    if-eqz v6, :cond_69

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    invoke-static {v1, v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosY(II)I

    move-result v0

    return v0

    :cond_69
    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    :cond_6c
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v0

    return v0

    :cond_77
    const/4 v0, -0x1

    return v0
.end method

.method public static getAirportRadarPx(Laoc/kingdoms/lukasz/map/battles/Airport;F)I
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_64

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->radarRange:F

    const/16 v2, 0x64

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_f

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->radarRange:F

    float-to-int v0, v1

    :cond_f
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    if-eqz v1, :cond_64

    const/4 v3, 0x0

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_37

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_23
    if-ge v5, v4, :cond_37

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v6, :cond_34

    iget v7, v6, Laoc/kingdoms/lukasz/map/battles/AirUnit;->radarRange:F

    cmpl-float v0, v3, v7

    if-gez v0, :cond_34

    move v3, v7

    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_37
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_5a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_46
    if-ge v5, v4, :cond_5a

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v6, :cond_57

    iget v7, v6, Laoc/kingdoms/lukasz/map/battles/AirUnit;->radarRange:F

    cmpl-float v0, v3, v7

    if-gez v0, :cond_57

    move v3, v7

    :cond_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    :cond_5a
    const/high16 v7, 0x3e800000    # 0.25f

    mul-float v3, v3, v7

    mul-float v3, v3, p1

    float-to-int v3, v3

    if-gtz v0, :cond_64

    move v0, v3

    :cond_64
    return v0
.end method

.method public static final getArmyHeight()I
    .registers 1

    .line 470
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyLeft:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    return v0
.end method

.method public static final getArmyPosX(II)I
    .registers 4
    .param p0, "nProvinceID"    # I
    .param p1, "nArmyID"    # I

    .line 450
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static final getArmyPosX_Shadow(I)I
    .registers 3
    .param p0, "nProvinceID"    # I

    .line 458
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static final getArmyPosY(II)I
    .registers 4
    .param p0, "nProvinceID"    # I
    .param p1, "nArmyID"    # I

    .line 454
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static final getArmyPosY_Shadow(I)I
    .registers 3
    .param p0, "nProvinceID"    # I

    .line 462
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static final getArmyWidth(I)I
    .registers 2
    .param p0, "nArmyWidth"    # I

    .line 466
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyLeft3_Width:I

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public static final getDetailsPosX(I)I
    .registers 3
    .param p0, "nProvinceID"    # I

    .line 434
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->drawDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;->iShiftX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static final getDetailsPosX_2(I)I
    .registers 3
    .param p0, "nProvinceID"    # I

    .line 438
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static final getDetailsPosY(I)I
    .registers 3
    .param p0, "nProvinceID"    # I

    .line 442
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->drawDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;->iShiftY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static final getDetailsPosY_2(I)I
    .registers 3
    .param p0, "nProvinceID"    # I

    .line 446
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static getHpText(Laoc/kingdoms/lukasz/map/battles/AirMission;)Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p0, :cond_36

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :cond_c
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_36
    const-string v0, "x0/0"

    return-object v0
.end method

.method public static getKeyCiv(Ljava/lang/String;)I
    .registers 5

    const/4 v0, -0x1

    if-eqz p0, :cond_14

    :try_start_3
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_14

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_14} :catch_15

    :cond_14
    return v0

    :catch_15
    move-exception v1

    const/4 v0, -0x1

    return v0
.end method

.method public static getKeyOrd(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x1

    if-eqz p0, :cond_14

    :try_start_3
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_14

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_14} :catch_15

    :cond_14
    return v0

    :catch_15
    move-exception v1

    const/4 v0, 0x1

    return v0
.end method

.method public static getRingImageId(I)I
    .registers 4

    if-lez p0, :cond_1f

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v0, :cond_1f

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq p0, v1, :cond_1f

    invoke-static {v1, p0}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v2

    if-eqz v2, :cond_13

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airRingAlly:I

    return v0

    :cond_13
    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v2

    if-eqz v2, :cond_1c

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airRingAlly:I

    return v0

    :cond_1c
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airRingEnemy:I

    return v0

    :cond_1f
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airRingFriend:I

    return v0
.end method

.method public static hqP2(IIIILjava/lang/Object;)V
    .registers 14
    .param p0, "p"    # I
    .param p1, "a"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "div"    # Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->hqP2Ms:J

    sub-long v0, v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v4, v0, v2

    if-ltz v4, :cond_76

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->hqP2Ms:J

    check-cast p4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hqP2:p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":sx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":sy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":sys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":mv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ":k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "AIRDBG"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    return-void
.end method

.method private static isMyMission(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v0, :cond_a

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-eq v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method private static logArmyList(Laoc/kingdoms/lukasz/map/province/Province;I)V
    .registers 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->umAllMs:J

    sub-long v2, v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_68

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->umAllMs:J

    const/4 v0, 0x0

    :goto_15
    if-ge v0, p1, :cond_68

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    if-eqz v1, :cond_65

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "um_all:i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":k="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":mv="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ":sy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":sys="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":sx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "AIRDBG"

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_68
    return-void
.end method

.method private static msFxDrawTrail(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/map/battles/AirMission;)V
    .registers 16

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    int-to-float v2, v2

    iget v5, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTN:I

    if-lez v5, :cond_58

    iget-object v3, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTX:[F

    if-eqz v3, :cond_58

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTY:[F

    if-eqz v4, :cond_58

    move-object v8, p0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual/range {v8 .. v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget v5, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTH:I

    iget v7, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTN:I

    const/4 v6, 0x1

    sub-int v6, v7, v6

    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    move-object v9, p0

    const/16 v12, 0x3

    const/16 v13, 0x3

    :goto_3a
    if-ltz v6, :cond_58

    sub-int v7, v5, v6

    and-int/lit8 v7, v7, 0xf

    aget v10, v3, v7

    aget v11, v4, v7

    add-float v10, v10, v1

    mul-float v10, v10, v0

    float-to-int v10, v10

    add-int/lit8 v10, v10, -0x1

    add-float v11, v11, v2

    mul-float v11, v11, v0

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual/range {v8 .. v13}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_3a

    :cond_58
    return-void
.end method

.method private static msFxFrameDt()V
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->msFxPrevMs:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_21

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_14

    const-wide/16 v2, 0x0

    :cond_14
    const-wide/16 v4, 0x40

    cmp-long v6, v2, v4

    if-lez v6, :cond_1c

    const-wide/16 v2, 0x40

    :cond_1c
    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->msFxPrevMs:J

    sput-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->msFxFrameDtMs:J

    return-void

    :cond_21
    sget-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->msFxFrameDtMs:J

    return-void
.end method

.method private static msFxStep(Laoc/kingdoms/lukasz/map/battles/AirMission;IIII)V
    .registers 16

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    if-eqz v0, :cond_12

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    if-eqz v0, :cond_12

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Escape()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    return-void

    :cond_13
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->msFxFrameDt()V

    sget-wide v9, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->msFxFrameDtMs:J

    long-to-float v8, v9

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I

    if-eqz v0, :cond_5f

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    return-void

    :cond_21
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxX:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxY:F

    int-to-float v2, p3

    sub-float v2, v2, v0

    int-to-float v3, p4

    sub-float v3, v3, v1

    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float v4, v4, v5

    const v5, 0x42800000    # 64.0f

    cmpl-float v6, v4, v5

    if-gez v6, :cond_3c

    const/4 v0, 0x2

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I

    return-void

    :cond_3c
    float-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v4, v9

    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxSpd:F

    mul-float v5, v5, v8

    cmpl-float v6, v5, v4

    if-lez v6, :cond_4b

    move v5, v4

    :cond_4b
    div-float v6, v2, v4

    div-float v7, v3, v4

    mul-float v6, v6, v5

    mul-float v7, v7, v5

    add-float v0, v0, v6

    add-float v1, v1, v7

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxX:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxY:F

    invoke-static {p0, v0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->msFxTrailAdd(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)V

    return-void

    :cond_5f
    const/16 v2, 0x12c

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    if-eqz v4, :cond_6a

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I

    if-lez v4, :cond_6a

    int-to-float v2, v4

    :cond_6a
    const/4 v0, 0x2

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFlyHours:I

    if-lez v1, :cond_71

    div-int/lit8 v0, v1, 0x2

    :cond_71
    int-to-float v0, v0

    mul-float v3, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileMs:J

    sub-long v9, v9, v0

    const-wide/16 v0, 0x0

    cmp-long v6, v9, v0

    if-gez v6, :cond_84

    const-wide/16 v9, 0x0

    :cond_84
    long-to-float v4, v9

    div-float v4, v4, v3

    const v5, 0x3f666666    # 0.9f

    cmpl-float v6, v4, v5

    if-lez v6, :cond_91

    const v4, 0x3f666666    # 0.9f

    :cond_91
    sub-int v0, p3, p1

    int-to-float v0, v0

    mul-float v0, v0, v4

    int-to-float v1, p1

    add-float v0, v0, v1

    sub-int v1, p4, p2

    int-to-float v1, v1

    mul-float v1, v1, v4

    int-to-float v2, p2

    add-float v1, v1, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxX:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxY:F

    long-to-float v2, v9

    sub-float v2, v3, v2

    const v4, 0x42000000    # 32.0f

    cmpl-float v5, v2, v4

    if-gez v5, :cond_b2

    const v2, 0x42000000    # 32.0f

    :cond_b2
    int-to-float v4, p3

    sub-float v4, v4, v0

    div-float v4, v4, v2

    int-to-float v5, p4

    sub-float v5, v5, v1

    div-float v5, v5, v2

    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float v6, v6, v7

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v6, v9

    iput v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxSpd:F

    const/4 v6, 0x1

    iput v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I

    const/4 v6, 0x0

    iput v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTN:I

    const/16 v6, 0xf

    iput v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTH:I

    invoke-static {p0, v0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->msFxTrailAdd(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)V

    return-void
.end method

.method private static msFxTrailAdd(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)V
    .registers 14

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTX:[F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTY:[F

    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    goto :goto_1a

    :cond_9
    const/16 v2, 0x10

    new-array v0, v2, [F

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTX:[F

    new-array v1, v2, [F

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTY:[F

    const/4 v2, 0x0

    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTN:I

    const/16 v2, 0xf

    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTH:I

    :goto_1a
    const/4 v2, 0x0

    :goto_1b
    const/16 v3, 0x8

    if-ge v2, v3, :cond_74

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTN:I

    if-eqz v3, :cond_65

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTH:I

    aget v4, v0, v3

    aget v5, v1, v3

    sub-float v6, p1, v4

    sub-float v7, p2, v5

    mul-float v8, v6, v6

    mul-float v9, v7, v7

    add-float v8, v8, v9

    const/high16 v9, 0x41800000    # 16.0f

    cmpl-float v10, v8, v9

    if-gez v10, :cond_3a

    goto :goto_74

    :cond_3a
    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    const/high16 v9, 0x40800000    # 4.0f

    div-float v9, v9, v8

    mul-float v6, v6, v9

    mul-float v7, v7, v9

    add-float v4, v4, v6

    add-float v5, v5, v7

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTH:I

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, 0xf

    iput v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTH:I

    aput v4, v0, v3

    aput v5, v1, v3

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTN:I

    const/16 v6, 0x10

    if-ge v3, v6, :cond_62

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTN:I

    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_65
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTH:I

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, 0xf

    iput v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTH:I

    aput p1, v0, v3

    aput p2, v1, v3

    const/4 v3, 0x1

    iput v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTN:I

    :cond_74
    :goto_74
    return-void
.end method

.method public static myOrDetectedMission(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z
    .registers 5

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->isMyMission(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    if-eqz p0, :cond_34

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->airDetSeen:Ljava/util/HashSet;

    if-eqz v1, :cond_1c

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ltz v0, :cond_34

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v1, :cond_34

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_34

    const/4 v0, 0x1

    return v0

    :cond_34
    const/4 v0, 0x0

    return v0
.end method

.method public static smoothHeading(Laoc/kingdoms/lukasz/map/battles/AirMission;F)F
    .registers 12
    .param p0, "mission"    # Laoc/kingdoms/lukasz/map/battles/AirMission;
    .param p1, "target"    # F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->dispHeadingMs:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_11

    iput p1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->dispHeading:F

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->dispHeadingMs:J

    return p1

    :cond_11
    sub-long v4, v0, v2

    long-to-int v4, v4

    if-lez v4, :cond_17

    goto :goto_19

    :cond_17
    const/16 v4, 0x10

    :goto_19
    const/16 v5, 0xfa

    if-le v4, v5, :cond_1e

    move v4, v5

    :cond_1e
    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->dispHeading:F

    sub-float v6, p1, v5

    const/high16 v7, 0x43340000    # 180.0f

    cmpl-float v8, v6, v7

    if-gtz v8, :cond_29

    goto :goto_2c

    :cond_29
    const/high16 v8, 0x43b40000    # 360.0f

    sub-float/2addr v6, v8

    :goto_2c
    const/high16 v7, -0x3ccc0000    # -180.0f

    cmpl-float v8, v6, v7

    if-ltz v8, :cond_33

    goto :goto_36

    :cond_33
    const/high16 v8, 0x43b40000    # 360.0f

    add-float/2addr v6, v8

    :goto_36
    const/high16 v7, 0x43870000    # 270.0f

    int-to-float v8, v4

    mul-float v7, v7, v8

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    const/4 v8, 0x0

    sub-float v9, v8, v7

    cmpl-float v8, v6, v7

    if-gtz v8, :cond_4e

    cmpl-float v8, v6, v9

    if-ltz v8, :cond_54

    iput p1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->dispHeading:F

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->dispHeadingMs:J

    return p1

    :cond_4e
    add-float/2addr v5, v7

    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->dispHeading:F

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->dispHeadingMs:J

    return v5

    :cond_54
    sub-float/2addr v5, v7

    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->dispHeading:F

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->dispHeadingMs:J

    return v5
.end method

.method public static final updateArmyHeight()V
    .registers 3

    .line 711
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 713
    .local v0, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_ARMY:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v2, "0123456789"

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 714
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v1, v1

    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->ARMY_HEIGHT:I

    .line 715
    return-void
.end method

.method public static final updateArmyImgID()V
    .registers 2

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 68
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateArmyImgID()V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public static final updateCitiesTime()V
    .registers 6

    .line 150
    sget-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_TIME:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    .line 151
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_TIME:J

    .line 152
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    goto :goto_30

    .line 155
    :cond_10
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_30

    .line 156
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_TIME:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float v0, v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    .line 158
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_30

    .line 159
    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    .line 163
    :cond_30
    :goto_30
    return-void
.end method

.method public static final updateCitiesTimeHide()V
    .registers 6

    .line 181
    sget-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_TIME_HIDE:J

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    cmp-long v5, v0, v2

    if-nez v5, :cond_11

    .line 182
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_TIME_HIDE:J

    .line 183
    sput v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    goto :goto_31

    .line 186
    :cond_11
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_TIME_HIDE:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    mul-float v0, v0, v4

    sub-float/2addr v4, v0

    sput v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    .line 188
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_31

    .line 189
    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    .line 190
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawCitiesHideAnimation:Z

    .line 193
    :cond_31
    :goto_31
    return-void
.end method

.method public static final updateDrawArmy(I)Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawArmyINT;
    .registers 2
    .param p0, "nProvinceID"    # I

    .line 396
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 397
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$1;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$1;-><init>()V

    return-object v0

    .line 407
    :cond_10
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$2;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$2;-><init>()V

    return-object v0
.end method

.method public static final updateDrawArmyAlpha()V
    .registers 5

    .line 75
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_ARMY_MIN_SCALE:F

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_17

    .line 76
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateTime()V

    .line 77
    sput-boolean v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawHideAnimation:Z

    .line 78
    sput-wide v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_TIME_HIDE:J

    goto :goto_21

    .line 81
    :cond_17
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawHideAnimation:Z

    if-eqz v0, :cond_1f

    .line 82
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateTimeHide()V

    goto :goto_21

    .line 85
    :cond_1f
    sput-wide v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_TIME:J

    .line 89
    :goto_21
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CITIES_MIN_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_35

    .line 90
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateCitiesTime()V

    .line 91
    sput-boolean v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawCitiesHideAnimation:Z

    .line 92
    sput-wide v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_TIME_HIDE:J

    goto :goto_3f

    .line 95
    :cond_35
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawCitiesHideAnimation:Z

    if-eqz v0, :cond_3d

    .line 96
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateCitiesTimeHide()V

    goto :goto_3f

    .line 99
    :cond_3d
    sput-wide v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_TIME:J

    .line 103
    :goto_3f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_53

    .line 104
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateProvinceNamesTime()V

    .line 105
    sput-boolean v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceNamesHideAnimation:Z

    .line 106
    sput-wide v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_TIME_HIDE:J

    goto :goto_5d

    .line 109
    :cond_53
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceNamesHideAnimation:Z

    if-eqz v0, :cond_5b

    .line 110
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateProvinceNamesTimeHide()V

    goto :goto_5d

    .line 113
    :cond_5b
    sput-wide v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_TIME:J

    .line 117
    :goto_5d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_OCCUPIED_PROVINCES_MIN_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_71

    .line 118
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateOccupiedTime()V

    .line 119
    sput-boolean v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawOccupiedHideAnimation:Z

    .line 120
    sput-wide v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_TIME_HIDE:J

    goto :goto_7b

    .line 123
    :cond_71
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawOccupiedHideAnimation:Z

    if-eqz v0, :cond_79

    .line 124
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateOccupiedTimeHide()V

    goto :goto_7b

    .line 127
    :cond_79
    sput-wide v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_TIME:J

    .line 130
    :goto_7b
    return-void
.end method

.method public static final updateOccupiedTime()V
    .registers 6

    .line 227
    sget-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_TIME:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    .line 228
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_TIME:J

    .line 229
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_ALPHA:F

    goto :goto_30

    .line 232
    :cond_10
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_ALPHA:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_30

    .line 233
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_TIME:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float v0, v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_ALPHA:F

    .line 235
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_ALPHA:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_30

    .line 236
    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_ALPHA:F

    .line 240
    :cond_30
    :goto_30
    return-void
.end method

.method public static final updateOccupiedTimeHide()V
    .registers 6

    .line 243
    sget-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_TIME_HIDE:J

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    cmp-long v5, v0, v2

    if-nez v5, :cond_11

    .line 244
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_TIME_HIDE:J

    .line 245
    sput v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_ALPHA:F

    goto :goto_31

    .line 248
    :cond_11
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_TIME_HIDE:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    mul-float v0, v0, v4

    sub-float/2addr v4, v0

    sput v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_ALPHA:F

    .line 250
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_ALPHA:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_31

    .line 251
    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_OCCUPIED_ALPHA:F

    .line 252
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawOccupiedHideAnimation:Z

    .line 255
    :cond_31
    :goto_31
    return-void
.end method

.method public static final updateProvinceNamesTime()V
    .registers 6

    .line 211
    sget-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_TIME:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    .line 212
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_TIME:J

    .line 213
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    goto :goto_30

    .line 216
    :cond_10
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_30

    .line 217
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_TIME:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float v0, v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    .line 219
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_30

    .line 220
    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    .line 224
    :cond_30
    :goto_30
    return-void
.end method

.method public static final updateProvinceNamesTimeHide()V
    .registers 6

    .line 196
    sget-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_TIME_HIDE:J

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    cmp-long v5, v0, v2

    if-nez v5, :cond_11

    .line 197
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_TIME_HIDE:J

    .line 198
    sput v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    goto :goto_31

    .line 201
    :cond_11
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_TIME_HIDE:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    mul-float v0, v0, v4

    sub-float/2addr v4, v0

    sput v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    .line 203
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_31

    .line 204
    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    .line 205
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceNamesHideAnimation:Z

    .line 208
    :cond_31
    :goto_31
    return-void
.end method

.method public static final updateTime()V
    .registers 6

    .line 133
    sget-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_TIME:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    .line 134
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_TIME:J

    .line 135
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    goto :goto_30

    .line 138
    :cond_10
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_30

    .line 139
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_TIME:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float v0, v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    .line 141
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_30

    .line 142
    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    .line 146
    :cond_30
    :goto_30
    return-void
.end method

.method public static final updateTimeHide()V
    .registers 6

    .line 166
    sget-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_TIME_HIDE:J

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    cmp-long v5, v0, v2

    if-nez v5, :cond_11

    .line 167
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_TIME_HIDE:J

    .line 168
    sput v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    goto :goto_31

    .line 171
    :cond_11
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_TIME_HIDE:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIVILIZATIONS_NAMES_INTERVAL:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    mul-float v0, v0, v4

    sub-float/2addr v4, v0

    sput v4, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    .line 173
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_31

    .line 174
    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    .line 175
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawHideAnimation:Z

    .line 178
    :cond_31
    :goto_31
    return-void
.end method
