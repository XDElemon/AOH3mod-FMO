.class public Laoc/kingdoms/lukasz/map/map/MapEdgeMove;
.super Ljava/lang/Object;
.source "MapEdgeMove.java"


# static fields
.field public static final DEFAULT_SCROLL:I

.field public static final DEFAULT_SCROLL_MAP:I = 0x1e

.field private static MAX_MOVE_SPEED:I

.field private static PADDING_EDGE_MOVE:I

.field private static SCROLL_RESET_TIME:I


# instance fields
.field public MAP_MOVE_BOT:Z

.field public MAP_MOVE_KEYBOARD:I

.field public MAP_MOVE_LEFT:Z

.field public MAP_MOVE_RIGHT:Z

.field public MAP_MOVE_TOP:Z

.field private final NEXT_SCROLL_TIME:I

.field private extraTime:I

.field public fScroll_XorY_Perc:F

.field private iMousePosX:I

.field private iMousePosY:I

.field private iScroll:I

.field public iScroll_MAP:F

.field private lScrollResetTime:J

.field private lScrollTime:J

.field public lScrollTime_MAP:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const/16 v0, 0xa

    sput v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->PADDING_EDGE_MOVE:I

    .line 16
    const/16 v0, 0x2d

    sput v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAX_MOVE_SPEED:I

    .line 24
    const/16 v0, 0x15e

    sput v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->SCROLL_RESET_TIME:I

    .line 28
    sget v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->PADDING_EDGE_MOVE:I

    sput v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->DEFAULT_SCROLL:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    .line 10
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_LEFT:Z

    .line 11
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_RIGHT:Z

    .line 12
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_TOP:Z

    .line 13
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_BOT:Z

    .line 19
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->fScroll_XorY_Perc:F

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollTime_MAP:J

    .line 23
    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollResetTime:J

    .line 29
    sget v2, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->DEFAULT_SCROLL:I

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll:I

    .line 30
    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollTime:J

    .line 34
    const/16 v0, 0x64

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iMousePosX:I

    .line 35
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iMousePosY:I

    .line 37
    const/16 v0, 0x7d

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->extraTime:I

    .line 176
    const/16 v0, 0xa

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->NEXT_SCROLL_TIME:I

    return-void
.end method

.method private final getMaxMoveSpeed()I
    .registers 6

    .line 225
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_20

    .line 226
    sget v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAX_MOVE_SPEED:I

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    sub-float v2, v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    add-float/2addr v2, v1

    mul-float v0, v0, v2

    float-to-int v0, v0

    return v0

    .line 229
    :cond_20
    sget v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAX_MOVE_SPEED:I

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    div-float/2addr v2, v3

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private final resetScrollMap()V
    .registers 6

    .line 109
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollResetTime:J

    sget v2, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->SCROLL_RESET_TIME:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_19

    .line 110
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->extraTime:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollTime_MAP:J

    .line 111
    sget v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->DEFAULT_SCROLL:I

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    .line 113
    :cond_19
    return-void
.end method

.method private final updateScroll_MapX()V
    .registers 7

    .line 179
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iMousePosY:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-le v0, v1, :cond_1c

    .line 180
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iMousePosY:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->fScroll_XorY_Perc:F

    goto :goto_29

    .line 183
    :cond_1c
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iMousePosY:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    neg-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->fScroll_XorY_Perc:F

    .line 186
    :goto_29
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollResetTime:J

    .line 188
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollTime_MAP:J

    const-wide/16 v4, 0xa

    add-long/2addr v0, v4

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v2, v0, v4

    if-gez v2, :cond_7d

    .line 189
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollTime_MAP:J

    .line 191
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    const v1, 0x3e051eb8    # 0.13f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5b

    .line 192
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    sub-float/2addr v3, v4

    add-float/2addr v3, v1

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    goto :goto_6b

    .line 194
    :cond_5b
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v1, v3

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    .line 198
    :goto_6b
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->getMaxMoveSpeed()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7d

    .line 199
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->getMaxMoveSpeed()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    .line 202
    :cond_7d
    return-void
.end method

.method private final updateScroll_MapY()V
    .registers 7

    .line 205
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iMousePosX:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-le v0, v1, :cond_1c

    .line 206
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iMousePosX:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->fScroll_XorY_Perc:F

    goto :goto_29

    .line 209
    :cond_1c
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iMousePosX:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    neg-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->fScroll_XorY_Perc:F

    .line 212
    :goto_29
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollResetTime:J

    .line 214
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollTime_MAP:J

    const-wide/16 v4, 0xa

    add-long/2addr v0, v4

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v2, v0, v4

    if-gez v2, :cond_6e

    .line 215
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollTime_MAP:J

    .line 216
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_52

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    sub-float/2addr v3, v2

    goto :goto_53

    :cond_52
    const/4 v3, 0x0

    :goto_53
    const v2, 0x3e4ccccd    # 0.2f

    add-float/2addr v3, v2

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    .line 218
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->getMaxMoveSpeed()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6e

    .line 219
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->getMaxMoveSpeed()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    .line 222
    :cond_6e
    return-void
.end method


# virtual methods
.method public final MouseMoved_EdgeMove(II)V
    .registers 7
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I

    .line 40
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop:Z

    if-eqz v0, :cond_7e

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    if-nez v0, :cond_7e

    .line 41
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iMousePosX:I

    .line 42
    iput p2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iMousePosY:I

    .line 44
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->ENABLE_EDGE_SCROLL:Z

    if-eqz v0, :cond_7e

    .line 45
    sget v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->PADDING_EDGE_MOVE:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p1, v0, :cond_2b

    .line 46
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_LEFT:Z

    if-nez v0, :cond_2d

    .line 47
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_LEFT:Z

    .line 48
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_RIGHT:Z

    .line 50
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->resetScrollMap()V

    .line 51
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->stopScrollingTheMap()V

    .line 53
    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    goto :goto_2d

    .line 57
    :cond_2b
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_LEFT:Z

    .line 60
    :cond_2d
    :goto_2d
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->PADDING_EDGE_MOVE:I

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_47

    .line 61
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_RIGHT:Z

    if-nez v0, :cond_49

    .line 62
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_RIGHT:Z

    .line 63
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_LEFT:Z

    .line 65
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->resetScrollMap()V

    .line 66
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->stopScrollingTheMap()V

    .line 68
    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    goto :goto_49

    .line 72
    :cond_47
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_RIGHT:Z

    .line 75
    :cond_49
    :goto_49
    sget v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->PADDING_EDGE_MOVE:I

    if-ge p2, v0, :cond_60

    .line 76
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_TOP:Z

    if-nez v0, :cond_62

    .line 77
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_TOP:Z

    .line 78
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_BOT:Z

    .line 80
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->resetScrollMap()V

    .line 81
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->stopScrollingTheMap()V

    .line 83
    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    goto :goto_62

    .line 87
    :cond_60
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_TOP:Z

    .line 90
    :cond_62
    :goto_62
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->PADDING_EDGE_MOVE:I

    sub-int/2addr v0, v3

    if-le p2, v0, :cond_7c

    .line 91
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_BOT:Z

    if-nez v0, :cond_7e

    .line 92
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_BOT:Z

    .line 93
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_TOP:Z

    .line 95
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->resetScrollMap()V

    .line 96
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->stopScrollingTheMap()V

    .line 98
    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    goto :goto_7e

    .line 102
    :cond_7c
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_BOT:Z

    .line 106
    :cond_7e
    :goto_7e
    return-void
.end method

.method public final updateMoveMap()V
    .registers 5

    .line 119
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    if-lez v0, :cond_61

    .line 120
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_LEFT:Z

    if-eqz v0, :cond_1b

    .line 121
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->updateScroll_MapX()V

    .line 122
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    goto :goto_31

    .line 124
    :cond_1b
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_RIGHT:Z

    if-eqz v0, :cond_31

    .line 125
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->updateScroll_MapX()V

    .line 126
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    .line 129
    :cond_31
    :goto_31
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_TOP:Z

    if-eqz v0, :cond_49

    .line 130
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->updateScroll_MapY()V

    .line 131
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    goto/16 :goto_124

    .line 133
    :cond_49
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_BOT:Z

    if-eqz v0, :cond_124

    .line 134
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->updateScroll_MapY()V

    .line 135
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    goto/16 :goto_124

    .line 139
    :cond_61
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_LEFT:Z

    if-eqz v0, :cond_8f

    .line 140
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->updateScroll_MapX()V

    .line 141
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    .line 143
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->fScroll_XorY_Perc:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    goto/16 :goto_124

    .line 145
    :cond_8f
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_RIGHT:Z

    if-eqz v0, :cond_bc

    .line 146
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->updateScroll_MapX()V

    .line 147
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    .line 149
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->fScroll_XorY_Perc:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    goto :goto_124

    .line 152
    :cond_bc
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_TOP:Z

    if-eqz v0, :cond_e9

    .line 153
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->updateScroll_MapY()V

    .line 154
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    .line 156
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->fScroll_XorY_Perc:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    goto :goto_124

    .line 158
    :cond_e9
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_BOT:Z

    if-eqz v0, :cond_124

    .line 159
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->updateScroll_MapY()V

    .line 160
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    .line 162
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->fScroll_XorY_Perc:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V
    :try_end_115
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_115} :catch_120
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_115} :catch_11b
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_115} :catch_116

    goto :goto_124

    .line 169
    :catch_116
    move-exception v0

    .line 170
    .local v0, "ex":Ljava/lang/ArithmeticException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/Throwable;)V

    goto :goto_125

    .line 167
    .end local v0    # "ex":Ljava/lang/ArithmeticException;
    :catch_11b
    move-exception v0

    .line 168
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/Throwable;)V

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_124

    .line 165
    :catch_120
    move-exception v0

    .line 166
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/Throwable;)V

    .line 171
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_124
    :goto_124
    nop

    .line 172
    :goto_125
    return-void
.end method
