.class public final Laoc/kingdoms/lukasz/map/province/RadarSDF;
.super Ljava/lang/Object;
.source "RadarSDF.java"


# static fields
.field private static batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

.field private static cxs:[F

.field private static cys:[F

.field private static delayFrames:I

.field private static failed:Z

.field private static fbo:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

.field private static flatPos:[F

.field private static flatRad:[F

.field private static n:I

.field private static rxs:[F

.field private static rys:[F

.field private static sdfProgram:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private static uiCam:Lcom/badlogic/gdx/graphics/OrthographicCamera;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x40

    new-array v0, v0, [F

    sput-object v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->cxs:[F

    const/16 v0, 0x40

    new-array v0, v0, [F

    sput-object v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->cys:[F

    const/16 v0, 0x40

    new-array v0, v0, [F

    sput-object v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->rxs:[F

    const/16 v0, 0x40

    new-array v0, v0, [F

    sput-object v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->rys:[F

    const/16 v0, 0x12c

    sput v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->delayFrames:I

    const/16 v0, 0x200

    new-array v0, v0, [F

    sput-object v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->flatPos:[F

    const/16 v0, 0x200

    new-array v0, v0, [F

    sput-object v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->flatRad:[F

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->n:I

    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->failed:Z

    return-void
.end method

.method public static add(IIII)V
    .registers 8
    .param p0, "cx"    # I
    .param p1, "cy"    # I
    .param p2, "rx"    # I
    .param p3, "ry"    # I

    sget v2, Laoc/kingdoms/lukasz/map/province/RadarSDF;->n:I

    const/16 v0, 0x40

    if-ge v2, v0, :cond_36

    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->cxs:[F

    int-to-float v1, p0

    aput v1, v0, v2

    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->cys:[F

    int-to-float v1, p1

    aput v1, v0, v2

    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->rxs:[F

    int-to-float v1, p2

    aput v1, v0, v2

    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->rys:[F

    int-to-float v1, p3

    aput v1, v0, v2

    shl-int/lit8 v0, v2, 0x1

    sget-object v3, Laoc/kingdoms/lukasz/map/province/RadarSDF;->flatPos:[F

    int-to-float v1, p0

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, p1

    aput v1, v3, v0

    shl-int/lit8 v0, v2, 0x1

    sget-object v3, Laoc/kingdoms/lukasz/map/province/RadarSDF;->flatRad:[F

    int-to-float v1, p2

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, p3

    aput v1, v3, v0

    add-int/lit8 v2, v2, 0x1

    sput v2, Laoc/kingdoms/lukasz/map/province/RadarSDF;->n:I

    :cond_36
    return-void
.end method

.method public static flushDraw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 18
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-object/from16 v15, p0

    sget v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->delayFrames:I

    if-lez v0, :cond_b

    add-int/lit8 v0, v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->delayFrames:I

    return-void

    :cond_b
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarSDF;->init()V

    const-string v12, "AIRDBG"

    const-string v13, "R4C_F1_GO"

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->sdfProgram:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_d1

    const-string v12, "AIRDBG"

    const-string v13, "R4C_F2_PROGRAM_OK"

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_20
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v14

    const v0, 0x3da35d29

    cmpl-float v0, v14, v0

    if-gez v0, :cond_2f

    const/high16 v14, 0x3f800000    # 1.0f

    :cond_2f
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    sget-object v1, Laoc/kingdoms/lukasz/map/province/RadarSDF;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    sget-object v1, Laoc/kingdoms/lukasz/map/province/RadarSDF;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    const-string v12, "AIRDBG"

    const-string v13, "R4C_F4_BATCH_BEGIN"

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Laoc/kingdoms/lukasz/map/province/RadarSDF;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v2, Laoc/kingdoms/lukasz/map/province/RadarSDF;->sdfProgram:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    const-string v12, "AIRDBG"

    const-string v13, "R4C_F5_SETSHADER"

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Laoc/kingdoms/lukasz/map/province/RadarSDF;->sdfProgram:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "uRes"

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    div-float v2, v2, v14

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    div-float v3, v3, v14

    invoke-virtual {v13, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    sget-object v13, Laoc/kingdoms/lukasz/map/province/RadarSDF;->sdfProgram:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "uN"

    sget v2, Laoc/kingdoms/lukasz/map/province/RadarSDF;->n:I

    int-to-float v2, v2

    invoke-virtual {v13, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v13, Laoc/kingdoms/lukasz/map/province/RadarSDF;->sdfProgram:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "uPos[0]"

    sget-object v2, Laoc/kingdoms/lukasz/map/province/RadarSDF;->flatPos:[F

    const/4 v3, 0x0

    sget v4, Laoc/kingdoms/lukasz/map/province/RadarSDF;->n:I

    shl-int/lit8 v4, v4, 0x1

    invoke-virtual {v13, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniform2fv(Ljava/lang/String;[FII)V

    sget-object v13, Laoc/kingdoms/lukasz/map/province/RadarSDF;->sdfProgram:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "uRad[0]"

    sget-object v2, Laoc/kingdoms/lukasz/map/province/RadarSDF;->flatRad:[F

    const/4 v3, 0x0

    sget v4, Laoc/kingdoms/lukasz/map/province/RadarSDF;->n:I

    shl-int/lit8 v4, v4, 0x1

    invoke-virtual {v13, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniform2fv(Ljava/lang/String;[FII)V

    const-string v12, "AIRDBG"

    const-string v13, "R4C_F6_UNIFORMS"

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->radarFill:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v9

    move-object v0, v9

    sget-object v1, Laoc/kingdoms/lukasz/map/province/RadarSDF;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    div-float v4, v4, v14

    float-to-int v4, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v5, v5

    div-float v5, v5, v14

    float-to-int v5, v5

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    const-string v12, "AIRDBG"

    const-string v13, "R4C_F7_QUAD_DRAWN"

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    const-string v12, "AIRDBG"

    const-string v13, "R4C_F8_BATCH_END"

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_c5} :catch_c6

    :goto_c5
    return-void

    :catch_c6
    move-exception v0

    const-string v12, "AIRDBG"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    :cond_d1
    return-void
.end method

.method private static init()V
    .registers 5

    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->sdfProgram:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-nez v0, :cond_6e

    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->failed:Z

    if-nez v0, :cond_6e

    :try_start_8
    const-string v0, "game/shader/default_vertex.glsl"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "game/shader/radarSDF_fragment.glsl"

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Laoc/kingdoms/lukasz/map/province/RadarSDF;->sdfProgram:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->fbo:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    new-instance v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>(FF)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    neg-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->uiCam:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    const-string v1, "AIRDBG"

    const-string v2, "R4C_INIT_OK"

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->sdfProgram:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled()Z

    move-result v0

    if-eqz v0, :cond_67

    const-string v1, "AIRDBG"

    const-string v2, "R4C_COMPILED"

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    :cond_67
    const-string v1, "AIRDBG"

    const-string v2, "R4C_NOCOMPILE"

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_6e} :catch_6f

    :cond_6e
    :goto_6e
    return-void

    :catch_6f
    move-exception v0

    const-string v1, "AIRDBG"

    const-string v2, "R4C_INIT_FAIL"

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    sput-boolean v1, Laoc/kingdoms/lukasz/map/province/RadarSDF;->failed:Z

    return-void
.end method

.method public static isEnabled()Z
    .registers 2

    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->sdfProgram:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public static reset()V
    .registers 1

    const/16 v0, 0x78

    sput v0, Laoc/kingdoms/lukasz/map/province/RadarSDF;->n:I

    return-void
.end method
