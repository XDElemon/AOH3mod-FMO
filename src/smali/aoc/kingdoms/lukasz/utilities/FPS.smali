.class public Laoc/kingdoms/lukasz/utilities/FPS;
.super Ljava/lang/Object;
.source "FPS.java"


# static fields
.field public static final MIN_NUM_OF_FPS:I = 0x16

.field public static drawFPS:Z


# instance fields
.field public iFPS_Counter:I

.field public iNumOfFPS:I

.field public lTimeFPS:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/utilities/FPS;->drawFPS:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/utilities/FPS;->iFPS_Counter:I

    .line 15
    const/16 v0, 0x3c

    iput v0, p0, Laoc/kingdoms/lukasz/utilities/FPS;->iNumOfFPS:I

    return-void
.end method


# virtual methods
.method public countFPS()V
    .registers 7

    .line 21
    iget v0, p0, Laoc/kingdoms/lukasz/utilities/FPS;->iFPS_Counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/utilities/FPS;->iFPS_Counter:I

    .line 23
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v2, p0, Laoc/kingdoms/lukasz/utilities/FPS;->lTimeFPS:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_1c

    .line 24
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/utilities/FPS;->lTimeFPS:J

    .line 25
    iget v0, p0, Laoc/kingdoms/lukasz/utilities/FPS;->iFPS_Counter:I

    iput v0, p0, Laoc/kingdoms/lukasz/utilities/FPS;->iNumOfFPS:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/utilities/FPS;->iFPS_Counter:I

    .line 28
    :cond_1c
    return-void
.end method

.method public final drawFPS(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 31
    sget-boolean v0, Laoc/kingdoms/lukasz/utilities/FPS;->drawFPS:Z

    if-nez v0, :cond_c

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInSettingsMenu()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 35
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/utilities/FPS;->iNumOfFPS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 38
    :cond_32
    return-void
.end method
