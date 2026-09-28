.class public Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
.super Ljava/lang/Object;
.source "MenuElement_Hover.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu/Hover;


# static fields
.field public static ANIMATION_ALPHA:F = 0.0f

.field public static ANIMATION_INTERVAL:I = 0x0

.field public static ANIMATION_PADDING:F = 0.0f

.field public static ANIMATION_TIME:J = 0x0L

.field public static DRAW_EXTRA_TIME:I = 0x0

.field public static final TEXT_SCALE:F = 0.9f

.field public static colorGradient:Lcom/badlogic/gdx/graphics/Color;

.field public static colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

.field public static lTimeDrawExtra:J


# instance fields
.field public INIT_TIME:J

.field private backAnimation:Z

.field public haveDrawExtraElement:Z

.field private iElementsSize:I

.field public iFontID:I

.field public iHeight:I

.field public iHeight2:I

.field public iHeightDrawExtra:I

.field private iMaxWidth:I

.field private iScrollPosX:I

.field private iWidth:I

.field private iWidthOver:I

.field private lElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;"
        }
    .end annotation
.end field

.field private lTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 25
    const/16 v0, 0x9c4

    sput v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    .line 26
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    .line 37
    const/16 v0, 0x992

    sput v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_INTERVAL:I

    .line 284
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e008081

    const v2, 0x3ee66666    # 0.45f

    const v3, 0x3da0a0a1

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    .line 285
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e828283

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e0c8c8d

    const v4, 0x3e48c8c9

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p1, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iElementsSize:I

    .line 28
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->haveDrawExtraElement:Z

    .line 39
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iFontID:I

    .line 49
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    .line 50
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight2:I

    .line 51
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    .line 52
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    .line 53
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iMaxWidth:I

    .line 55
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidthOver:I

    .line 56
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iScrollPosX:I

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->backAnimation:Z

    .line 58
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTime:J

    .line 63
    invoke-direct {p0, p1, v0, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->init(Ljava/util/List;IZ)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .registers 6
    .param p2, "iFontID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;I)V"
        }
    .end annotation

    .line 70
    .local p1, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iElementsSize:I

    .line 28
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->haveDrawExtraElement:Z

    .line 39
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iFontID:I

    .line 49
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    .line 50
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight2:I

    .line 51
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    .line 52
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    .line 53
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iMaxWidth:I

    .line 55
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidthOver:I

    .line 56
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iScrollPosX:I

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->backAnimation:Z

    .line 58
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTime:J

    .line 71
    invoke-direct {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->init(Ljava/util/List;IZ)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .registers 6
    .param p2, "titleBGLast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;Z)V"
        }
    .end annotation

    .line 66
    .local p1, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iElementsSize:I

    .line 28
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->haveDrawExtraElement:Z

    .line 39
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iFontID:I

    .line 49
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    .line 50
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight2:I

    .line 51
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    .line 52
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    .line 53
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iMaxWidth:I

    .line 55
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidthOver:I

    .line 56
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iScrollPosX:I

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->backAnimation:Z

    .line 58
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTime:J

    .line 67
    invoke-direct {p0, p1, v0, p2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->init(Ljava/util/List;IZ)V

    .line 68
    return-void
.end method

.method public static final getDrawExtraXPos()I
    .registers 1

    .line 281
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private final init(Ljava/util/List;IZ)V
    .registers 10
    .param p2, "iFontID"    # I
    .param p3, "titleBGLast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;IZ)V"
        }
    .end annotation

    .line 75
    .local p1, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    .line 76
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iElementsSize:I

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    .line 78
    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iFontID:I

    .line 81
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iElementsSize:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_69

    .line 82
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_58

    .line 83
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidthOver:I

    if-le v2, v4, :cond_58

    .line 84
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidthOver:I

    .line 88
    :cond_58
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->drawElement:Z

    if-nez v2, :cond_66

    .line 89
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->haveDrawExtraElement:Z

    .line 81
    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 92
    .end local v1    # "i":I
    :cond_69
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidthOver:I

    if-lez v1, :cond_7a

    .line 93
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidthOver:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iScrollPosX:I

    .line 94
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTime:J

    .line 97
    :cond_7a
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7b
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iElementsSize:I

    if-ge v1, v2, :cond_ae

    .line 98
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result v2

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    if-le v2, v4, :cond_ab

    .line 99
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    .line 100
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iMaxWidth:I

    .line 97
    :cond_ab
    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    .line 104
    .end local v1    # "i":I
    :cond_ae
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    .line 105
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight2:I

    .line 106
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iElementsSize:I

    sub-int/2addr v1, v3

    mul-int v0, v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "numElements":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_cb
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iElementsSize:I

    if-ge v1, v2, :cond_102

    .line 110
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    .line 112
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->drawElement:Z

    if-eqz v2, :cond_ff

    .line 113
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight2:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight2:I

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 109
    :cond_ff
    add-int/lit8 v1, v1, 0x1

    goto :goto_cb

    .line 118
    .end local v1    # "i":I
    :cond_102
    if-eqz p3, :cond_116

    .line 119
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight2:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight2:I

    .line 120
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    .line 123
    :cond_116
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight2:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v2, v2, v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight2:I

    .line 125
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight2:I

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    .line 127
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    .line 128
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->INIT_TIME:J

    .line 129
    return-void
.end method

.method public static final resetAnimation()V
    .registers 2

    .line 42
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_TIME:J

    .line 43
    const v0, 0x3cb851ec    # 0.0225f

    sput v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    .line 44
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v0, v0

    sput v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_PADDING:F

    .line 45
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 7
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 143
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->initHide()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    if-ne v0, v1, :cond_11

    .line 144
    return-void

    .line 147
    :cond_11
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->updateHeight()V

    .line 149
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getMinPosX()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 151
    int-to-float v0, p2

    sget v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_PADDING:F

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 152
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_34

    .line 153
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int p2, v0, v1

    .line 155
    :cond_34
    if-gez p3, :cond_39

    .line 156
    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    goto :goto_49

    .line 158
    :cond_39
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    add-int/2addr v0, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    if-le v0, v1, :cond_49

    .line 159
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int p3, v0, v1

    .line 162
    :cond_49
    :goto_49
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 163
    return-void
.end method

.method public final drawAlwaysBelow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 7
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 219
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->updateHeight()V

    .line 221
    int-to-float v0, p2

    sget v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_PADDING:F

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 222
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p2, v0

    .line 223
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p3, v0

    .line 225
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_21

    .line 226
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int p2, v0, v1

    .line 229
    :cond_21
    if-gez p3, :cond_26

    .line 230
    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    goto :goto_36

    .line 232
    :cond_26
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    add-int/2addr v0, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    if-le v0, v1, :cond_36

    .line 233
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int p3, v0, v1

    .line 236
    :cond_36
    :goto_36
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 237
    return-void
.end method

.method public final drawAlwaysOver(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 7
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 167
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->initHide()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 168
    return-void

    .line 171
    :cond_7
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->updateHeight()V

    .line 173
    int-to-float v0, p2

    sget v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_PADDING:F

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 174
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p2, v0

    .line 175
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    sub-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    .line 177
    .end local p3    # "nPosY":I
    .local v0, "nPosY":I
    iget p3, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    add-int/2addr p3, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    if-le p3, v1, :cond_2c

    .line 178
    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    sub-int/2addr p3, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int p2, p3, v1

    .line 181
    :cond_2c
    if-gez v0, :cond_31

    .line 182
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    goto :goto_41

    .line 184
    :cond_31
    iget p3, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    add-int/2addr p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    if-le p3, v1, :cond_41

    .line 185
    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    sub-int/2addr p3, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v0, p3, v1

    .line 188
    :cond_41
    :goto_41
    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 189
    return-void
.end method

.method public final drawAlwaysOver_Mobile(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 7
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 193
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->updateHeight()V

    .line 195
    int-to-float v0, p2

    sget v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_PADDING:F

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 196
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    div-int/lit8 v0, v0, 0x4

    sub-int/2addr p2, v0

    .line 197
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    sub-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    .line 199
    .end local p3    # "nPosY":I
    .local v0, "nPosY":I
    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    if-ge p2, p3, :cond_1c

    .line 200
    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 203
    :cond_1c
    iget p3, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    add-int/2addr p3, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    if-le p3, v1, :cond_2f

    .line 204
    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    sub-int/2addr p3, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int p2, p3, v1

    .line 207
    :cond_2f
    if-gez v0, :cond_34

    .line 208
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    goto :goto_44

    .line 210
    :cond_34
    iget p3, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    add-int/2addr p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    if-le p3, v1, :cond_44

    .line 211
    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    sub-int/2addr p3, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v0, p3, v1

    .line 214
    :cond_44
    :goto_44
    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 215
    return-void
.end method

.method public final drawProvinceInfo(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 269
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->initHide()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 270
    return-void

    .line 273
    :cond_7
    int-to-float v0, p2

    sget v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_PADDING:F

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 275
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 276
    return-void
.end method

.method public final draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 24
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 289
    move-object/from16 v7, p0

    move-object/from16 v6, p1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getScrollPosX()I

    move-result v16

    .line 290
    .local v16, "tempScrollX":I
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-long v2, v2

    const/16 v17, 0x1

    cmp-long v4, v0, v2

    if-ltz v4, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    move/from16 v18, v0

    .line 292
    .local v18, "drawExtra":Z
    const v19, 0x3dcccccd    # 0.1f

    const v0, 0x3f79999a    # 0.975f

    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v18, :cond_129

    .line 293
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    mul-float v2, v2, v0

    invoke-direct {v1, v15, v15, v15, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 294
    add-int v1, p2, v16

    iget v3, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    iget v4, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    sget v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    move-object/from16 v0, p1

    move/from16 v2, p3

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 296
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    sget v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    mul-float v4, v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 297
    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    add-int v10, p2, v16

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    div-int/lit8 v0, v0, 0x2

    add-int v11, p3, v0

    iget v12, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    iget v1, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v13, v0, -0x2

    const/4 v14, 0x0

    const/4 v0, 0x0

    move-object/from16 v9, p1

    const/high16 v5, 0x3f800000    # 1.0f

    move v15, v0

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 299
    iget-boolean v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->haveDrawExtraElement:Z

    if-eqz v0, :cond_120

    .line 300
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    sget v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    mul-float v4, v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 301
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    add-int v10, p2, v16

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    add-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v11, v0, v1

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v0, v0

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v12, v0

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 302
    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    add-int v10, p2, v16

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    add-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v11, v0, v1

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v0, v0

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v12, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v0, 0x2

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 303
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    mul-float v1, v1, v19

    invoke-direct {v0, v5, v5, v5, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 304
    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    add-int v10, p2, v16

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    add-int v0, p3, v0

    add-int/lit8 v11, v0, -0x1

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v0, v0

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v12, v0

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 306
    :cond_120
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v1, 0x3f800000    # 1.0f

    goto/16 :goto_22e

    .line 309
    :cond_129
    const/high16 v5, 0x3f800000    # 1.0f

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    mul-float v2, v2, v0

    invoke-direct {v1, v5, v5, v5, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 310
    add-int v1, p2, v16

    iget v3, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    iget v4, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    sget v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    move-object/from16 v0, p1

    move/from16 v2, p3

    const/high16 v15, 0x3f800000    # 1.0f

    move v5, v8

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 312
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    sget v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    mul-float v4, v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 313
    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    add-int v10, p2, v16

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int v11, p3, v0

    iget v12, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    iget v1, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v13, v0, -0x2

    const/4 v14, 0x0

    const/4 v0, 0x0

    move-object/from16 v9, p1

    const/high16 v1, 0x3f800000    # 1.0f

    move v15, v0

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 315
    iget-boolean v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->haveDrawExtraElement:Z

    if-eqz v0, :cond_229

    .line 316
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    sget v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    mul-float v5, v5, v8

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 317
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    add-int v10, p2, v16

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    add-int v0, p3, v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v11, v0, v2

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v0, v0

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v12, v0

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 318
    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    add-int v10, p2, v16

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    add-int v0, p3, v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v11, v0, v2

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v0, v0

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v12, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v0, 0x2

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 319
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    mul-float v2, v2, v19

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 320
    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    add-int v10, p2, v16

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    add-int v0, p3, v0

    add-int/lit8 v11, v0, -0x1

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v0, v0

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v12, v0

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 323
    :cond_229
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 330
    :goto_22e
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 331
    sget v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v16

    move-object v8, v6

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->draw_HoverWithoutAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIFZ)V

    .line 332
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 333
    return-void
.end method

.method public final draw_HoverWithoutAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 24
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 337
    move-object/from16 v7, p0

    move-object/from16 v6, p1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getScrollPosX()I

    move-result v16

    .line 338
    .local v16, "tempScrollX":I
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-long v2, v2

    const/16 v17, 0x1

    cmp-long v4, v0, v2

    if-ltz v4, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    move/from16 v18, v0

    .line 340
    .local v18, "drawExtra":Z
    const v15, 0x3dcccccd    # 0.1f

    const v0, 0x3f79999a    # 0.975f

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v18, :cond_126

    .line 341
    iget v1, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    add-int v1, p3, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_3f

    .line 342
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    sub-int/2addr v1, v2

    move/from16 v19, v1

    .end local p3    # "nPosY":I
    .local v1, "nPosY":I
    goto :goto_41

    .line 341
    .end local v1    # "nPosY":I
    .restart local p3    # "nPosY":I
    :cond_3f
    move/from16 v19, p3

    .line 345
    .end local p3    # "nPosY":I
    .local v19, "nPosY":I
    :goto_41
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v14, v14, v14, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 346
    add-int v1, p2, v16

    iget v3, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    iget v4, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v2, v19

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 348
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 349
    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    add-int v10, p2, v16

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    div-int/lit8 v0, v0, 0x2

    add-int v11, v19, v0

    iget v12, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    iget v1, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v13, v0, -0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object/from16 v9, p1

    const/high16 v5, 0x3f800000    # 1.0f

    move v14, v0

    const v4, 0x3dcccccd    # 0.1f

    move v15, v1

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 351
    iget-boolean v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->haveDrawExtraElement:Z

    if-eqz v0, :cond_11d

    .line 352
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 353
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    add-int v10, p2, v16

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    add-int v0, v19, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v11, v0, v1

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v0, v0

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v12, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v1, v12

    long-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v12, v0

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 354
    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    add-int v10, p2, v16

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    add-int v0, v19, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v11, v0, v1

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v0, v0

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v12, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v1, v12

    long-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v12, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v0, 0x2

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 355
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 356
    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    add-int v10, p2, v16

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    add-int v0, v19, v0

    add-int/lit8 v11, v0, -0x1

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v0, v0

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v12, v0

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 358
    :cond_11d
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_22f

    .line 361
    .end local v19    # "nPosY":I
    .restart local p3    # "nPosY":I
    :cond_126
    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    iget v1, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    add-int v1, p3, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_145

    .line 362
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    sub-int/2addr v1, v2

    move/from16 v19, v1

    .end local p3    # "nPosY":I
    .restart local v1    # "nPosY":I
    goto :goto_147

    .line 361
    .end local v1    # "nPosY":I
    .restart local p3    # "nPosY":I
    :cond_145
    move/from16 v19, p3

    .line 365
    .end local p3    # "nPosY":I
    .restart local v19    # "nPosY":I
    :goto_147
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v5, v5, v5, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 366
    add-int v1, p2, v16

    iget v3, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    iget v8, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v2, v19

    const v15, 0x3dcccccd    # 0.1f

    move v4, v8

    const/high16 v14, 0x3f800000    # 1.0f

    move v5, v9

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 368
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 369
    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    add-int v10, p2, v16

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int v11, v19, v0

    iget v12, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    iget v1, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v13, v0, -0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object/from16 v9, p1

    const/high16 v2, 0x3f800000    # 1.0f

    move v14, v0

    const v0, 0x3dcccccd    # 0.1f

    move v15, v1

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 371
    iget-boolean v1, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->haveDrawExtraElement:Z

    if-eqz v1, :cond_22a

    .line 372
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-direct {v1, v3, v4, v5, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 373
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    add-int v10, p2, v16

    iget v1, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    add-int v1, v19, v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v11, v1, v3

    iget v1, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v1, v1

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v12, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v3, v12

    long-to-float v3, v3

    sget v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float v1, v1, v3

    float-to-int v12, v1

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 374
    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    add-int v10, p2, v16

    iget v1, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    add-int v1, v19, v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v11, v1, v3

    iget v1, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v1, v1

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v12, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v3, v12

    long-to-float v3, v3

    sget v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float v1, v1, v3

    float-to-int v12, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v1, 0x2

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 375
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v2, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 376
    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    add-int v10, p2, v16

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    add-int v0, v19, v0

    add-int/lit8 v11, v0, -0x1

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v0, v0

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v12, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v3, v12

    long-to-float v1, v3

    sget v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v12, v0

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 378
    :cond_22a
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 381
    :goto_22f
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 382
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v19

    move/from16 v4, v16

    move-object v8, v6

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->draw_HoverWithoutAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIFZ)V

    .line 383
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 384
    return-void
.end method

.method public final draw_HoverWithoutAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIFZ)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "tempScrollX"    # I
    .param p5, "fAlpha"    # F
    .param p6, "drawExtra"    # Z

    .line 387
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "tempPosY":I
    :goto_2
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iElementsSize:I

    if-ge v0, v2, :cond_46

    .line 388
    if-nez p6, :cond_14

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->drawElement:Z

    if-eqz v2, :cond_43

    .line 389
    :cond_14
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    add-int v2, p2, p4

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v4

    add-int v5, v2, v4

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    add-int v6, v2, v1

    iget v8, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iMaxWidth:I

    move-object v4, p1

    move v7, p5

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 391
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 387
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 394
    .end local v0    # "i":I
    .end local v1    # "tempPosY":I
    :cond_46
    return-void
.end method

.method public getMinPosX()I
    .registers 2

    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method protected final getScrollPosX()I
    .registers 6

    .line 240
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidthOver:I

    if-lez v0, :cond_50

    .line 241
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->backAnimation:Z

    if-eqz v0, :cond_29

    .line 242
    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTime:J

    const-wide/16 v2, 0x5dc

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_4d

    .line 243
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iScrollPosX:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iScrollPosX:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    neg-int v1, v1

    if-ge v0, v1, :cond_4d

    .line 244
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->backAnimation:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->backAnimation:Z

    .line 245
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTime:J

    goto :goto_4d

    .line 250
    :cond_29
    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTime:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_4d

    .line 251
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iScrollPosX:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iScrollPosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidthOver:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    if-le v0, v1, :cond_4d

    .line 252
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->backAnimation:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->backAnimation:Z

    .line 253
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTime:J

    .line 258
    :cond_4d
    :goto_4d
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iScrollPosX:I

    return v0

    .line 261
    :cond_50
    const/4 v0, 0x0

    return v0
.end method

.method public initHide()Z
    .registers 6

    .line 138
    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->INIT_TIME:J

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->notifications:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;->HOVER_HIDE_TIME:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public final updateHeight()V
    .registers 6

    .line 134
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_f

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    goto :goto_11

    :cond_f
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight2:I

    :goto_11
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    .line 135
    return-void
.end method
