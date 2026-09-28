.class public Laoc/kingdoms/lukasz/menu_element/Toast;
.super Ljava/lang/Object;
.source "Toast.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu/Hover;


# static fields
.field public static final TEXT_SCALE:F = 0.75f

.field public static final TIME_INVIEW_LONG:I = 0xdac

.field public static final TIME_INVIEW_SHORT:I = 0x6d6

.field public static final TIME_INVIEW_STANDARD:I = 0x9c4

.field public static final TIME_INVIEW_VERY_LONG:I = 0x1770

.field public static final TIME_INVIEW_VERY_SHORT:I = 0x3e8

.field public static final TIME_INVIEW_VERY_VERY_LONG:I = 0x2710

.field private static final TIME_START_OPACITY_PERCENTAGE:F = 0.4f


# instance fields
.field private backAnimation:Z

.field private fAlpha:F

.field private iElementsSize:I

.field public iFontID:I

.field public iHeight:I

.field public iMaxWidth:I

.field public iPosX:I

.field public iPosY:I

.field private iScrollPosX:I

.field private iTimeInView:I

.field public iWidth:I

.field private iWidthOver:I

.field public inView:Z

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
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "sText"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    .line 41
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    .line 42
    const/16 v1, 0x9c4

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    .line 43
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    .line 45
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    .line 49
    const/4 v2, -0x1

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    .line 50
    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    .line 52
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    .line 54
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    .line 55
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    .line 56
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    .line 58
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    .line 59
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    .line 60
    const/4 v2, 0x1

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    .line 65
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menu_element/Toast;->initText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v1, v0}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 7
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iFontID"    # I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    .line 41
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    .line 42
    const/16 v1, 0x9c4

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    .line 43
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    .line 45
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    .line 49
    const/4 v2, -0x1

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    .line 50
    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    .line 52
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    .line 54
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    .line 55
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    .line 56
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    .line 58
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    .line 59
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    .line 69
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menu_element/Toast;->initText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, v1, p2}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 7
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iFontID"    # I
    .param p3, "nTimeInView"    # I

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    .line 41
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    .line 42
    const/16 v1, 0x9c4

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    .line 43
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    .line 45
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    .line 49
    const/4 v1, -0x1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    .line 50
    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    .line 52
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    .line 54
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    .line 55
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    .line 56
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    .line 58
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    .line 59
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    .line 77
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menu_element/Toast;->initText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p3, p2}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    .registers 8
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iFontID"    # I
    .param p3, "nTimeInView"    # I
    .param p4, "nColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    .line 41
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    .line 42
    const/16 v1, 0x9c4

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    .line 43
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    .line 45
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    .line 49
    const/4 v1, -0x1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    .line 50
    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    .line 52
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    .line 54
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    .line 55
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    .line 56
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    .line 58
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    .line 59
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    .line 81
    invoke-direct {p0, p1, p4}, Laoc/kingdoms/lukasz/menu_element/Toast;->initText(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p3, p2}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;II)V
    .registers 10
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iFontID"    # I
    .param p3, "nTimeInView"    # I
    .param p4, "nColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p5, "nPosX"    # I
    .param p6, "nPosY"    # I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    .line 41
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    .line 42
    const/16 v1, 0x9c4

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    .line 43
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    .line 45
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    .line 49
    const/4 v1, -0x1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    .line 50
    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    .line 52
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    .line 54
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    .line 55
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    .line 56
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    .line 58
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    .line 59
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    .line 85
    iput p5, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    .line 86
    iput p6, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    .line 87
    invoke-direct {p0, p1, p4}, Laoc/kingdoms/lukasz/menu_element/Toast;->initText(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p3, p2}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iFontID"    # I
    .param p3, "visible"    # Z

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    .line 41
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    .line 42
    const/16 v1, 0x9c4

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    .line 43
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    .line 45
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    .line 49
    const/4 v2, -0x1

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    .line 50
    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    .line 52
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    .line 54
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    .line 55
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    .line 56
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    .line 58
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    .line 59
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    .line 91
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menu_element/Toast;->initText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, v1, p2}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    .line 92
    iput-boolean p3, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
    .registers 7
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "nColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    .line 41
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    .line 42
    const/16 v1, 0x9c4

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    .line 43
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    .line 45
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    .line 49
    const/4 v2, -0x1

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    .line 50
    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    .line 52
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    .line 54
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    .line 55
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    .line 56
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    .line 58
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    .line 59
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    .line 73
    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/menu_element/Toast;->initText(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    invoke-direct {p0, v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p1, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    .line 41
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    .line 42
    const/16 v1, 0x9c4

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    .line 43
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    .line 45
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    .line 49
    const/4 v2, -0x1

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    .line 50
    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    .line 52
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    .line 54
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    .line 55
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    .line 56
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    .line 58
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    .line 59
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    .line 60
    const/4 v2, 0x1

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    .line 96
    invoke-direct {p0, p1, v1, v0}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .registers 7
    .param p2, "iFontID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;I)V"
        }
    .end annotation

    .line 99
    .local p1, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    .line 41
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    .line 42
    const/16 v1, 0x9c4

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    .line 43
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    .line 45
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    .line 49
    const/4 v2, -0x1

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    .line 50
    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    .line 52
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    .line 54
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    .line 55
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    .line 56
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    .line 58
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    .line 59
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    .line 100
    invoke-direct {p0, p1, v1, p2}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/util/List;II)V
    .registers 7
    .param p2, "iFontID"    # I
    .param p3, "nTimeInView"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;II)V"
        }
    .end annotation

    .line 103
    .local p1, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    .line 41
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    .line 42
    const/16 v1, 0x9c4

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    .line 43
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    .line 45
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    .line 49
    const/4 v1, -0x1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    .line 50
    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    .line 52
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    .line 54
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    .line 55
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    .line 56
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    .line 58
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    .line 59
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    .line 104
    invoke-direct {p0, p1, p3, p2}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/util/List;IIII)V
    .registers 9
    .param p2, "iFontID"    # I
    .param p3, "nTimeInView"    # I
    .param p4, "nPosX"    # I
    .param p5, "nPosY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;IIII)V"
        }
    .end annotation

    .line 107
    .local p1, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    .line 41
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    .line 42
    const/16 v1, 0x9c4

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    .line 43
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    .line 45
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    .line 49
    const/4 v1, -0x1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    .line 50
    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    .line 52
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    .line 54
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    .line 55
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    .line 56
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    .line 58
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    .line 59
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    .line 108
    iput p4, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    .line 109
    iput p5, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    .line 110
    invoke-direct {p0, p1, p3, p2}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    .line 111
    return-void
.end method

.method private final init(Ljava/util/List;II)V
    .registers 8
    .param p2, "nTimeInView"    # I
    .param p3, "iFontID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;II)V"
        }
    .end annotation

    .line 136
    .local p1, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lElements:Ljava/util/List;

    .line 137
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    .line 139
    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iFontID:I

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    if-ge v0, v1, :cond_5a

    .line 143
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_57

    .line 144
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    if-le v1, v2, :cond_57

    .line 145
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    .line 142
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 149
    .end local v0    # "i":I
    :cond_5a
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    if-lez v0, :cond_6b

    .line 150
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    .line 151
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    .line 154
    :cond_6b
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6c
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    if-ge v0, v1, :cond_9f

    .line 155
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    if-le v1, v2, :cond_9c

    .line 156
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    .line 157
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    .line 154
    :cond_9c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .line 161
    .end local v0    # "i":I
    :cond_9f
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    .line 162
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    mul-int v0, v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    .line 164
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    .line 165
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    .line 166
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    .line 168
    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    .line 169
    return-void
.end method

.method private final initText(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "sText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    invoke-direct {v2, p1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 121
    return-object v0
.end method

.method private final initText(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Ljava/util/List;
    .registers 6
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "nColor"    # Lcom/badlogic/gdx/graphics/Color;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/Color;",
            ")",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    invoke-direct {v2, p1, p2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 132
    return-object v0
.end method


# virtual methods
.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 4
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 175
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menu_element/Toast;->draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 176
    return-void
.end method

.method public final drawAlwaysBelow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 4
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 190
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menu_element/Toast;->draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 191
    return-void
.end method

.method public final drawAlwaysOver(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 4
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 180
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menu_element/Toast;->draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 181
    return-void
.end method

.method public final drawAlwaysOver_Mobile(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 4
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 185
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menu_element/Toast;->draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 186
    return-void
.end method

.method public drawProvinceInfo(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 4
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 219
    return-void
.end method

.method public final draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 18
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 225
    move-object v0, p0

    move-object v9, p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Toast;->getScrollPosX()I

    move-result v10

    .line 227
    .local v10, "tempScrollX":I
    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_27

    .line 228
    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    .line 229
    .end local p2    # "nPosX":I
    .local v1, "nPosX":I
    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosY:I

    .line 231
    .end local p3    # "nPosY":I
    .local v2, "nPosY":I
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    if-le v3, v4, :cond_24

    .line 232
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    sub-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iPosX:I

    .line 241
    :cond_24
    move v11, v1

    move v12, v2

    goto :goto_3e

    .line 237
    .end local v1    # "nPosX":I
    .end local v2    # "nPosY":I
    .restart local p2    # "nPosX":I
    .restart local p3    # "nPosY":I
    :cond_27
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 238
    .end local p2    # "nPosX":I
    .restart local v1    # "nPosX":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    sub-int/2addr v2, v3

    sub-int v2, v2, p3

    move v11, v1

    move v12, v2

    .line 241
    .end local v1    # "nPosX":I
    .end local p3    # "nPosY":I
    .local v11, "nPosX":I
    .local v12, "nPosY":I
    :goto_3e
    iget-wide v1, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-gez v6, :cond_4e

    .line 242
    iput-boolean v5, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    goto :goto_89

    .line 244
    :cond_4e
    iget-wide v1, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float v3, v3, v4

    float-to-int v3, v3

    int-to-long v6, v3

    add-long/2addr v1, v6

    sget-wide v6, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v3, v1, v6

    if-gez v3, :cond_89

    .line 245
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v6, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    sub-long/2addr v1, v6

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    int-to-long v6, v3

    sub-long/2addr v1, v6

    long-to-int v2, v1

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v1, v3

    const/16 v3, 0xff

    invoke-static {v3, v5, v2, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getColorStep(IIII)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    .line 247
    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_89

    .line 248
    iput v2, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    .line 255
    :cond_89
    :goto_89
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v1, v13, v13, v13, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 256
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buttonGame:I

    add-int v3, v11, v10

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    move-object v1, p1

    move v4, v12

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 257
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3f400000    # 0.75f

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    mul-float v6, v6, v5

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 258
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    add-int v3, v11, v10

    add-int/lit8 v4, v12, 0x2

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 259
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    add-int v3, v11, v10

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    add-int/2addr v2, v12

    add-int/lit8 v2, v2, -0x2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v4, v2, v4

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 262
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    invoke-direct {v1, v13, v13, v13, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 263
    const/4 v1, 0x0

    move v7, v1

    .local v7, "i":I
    :goto_ef
    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    if-ge v7, v1, :cond_11f

    .line 264
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->lElements:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    add-int v2, v11, v10

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v12

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    mul-int v4, v4, v7

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v4, v4, v7

    add-int/2addr v4, v2

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 263
    add-int/lit8 v7, v7, 0x1

    goto :goto_ef

    .line 266
    .end local v7    # "i":I
    :cond_11f
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 267
    return-void
.end method

.method public final draw_HoverWithoutAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 17
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 271
    move-object v0, p0

    move-object v9, p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Toast;->getScrollPosX()I

    move-result v10

    .line 273
    .local v10, "tempScrollX":I
    iget-wide v1, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-gez v6, :cond_16

    .line 274
    iput-boolean v5, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    goto :goto_51

    .line 276
    :cond_16
    iget-wide v1, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float v3, v3, v4

    float-to-int v3, v3

    int-to-long v6, v3

    add-long/2addr v1, v6

    sget-wide v6, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v3, v1, v6

    if-gez v3, :cond_51

    .line 277
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v6, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    sub-long/2addr v1, v6

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    int-to-long v6, v3

    sub-long/2addr v1, v6

    long-to-int v2, v1

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iTimeInView:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v1, v3

    const/16 v3, 0xff

    invoke-static {v3, v5, v2, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getColorStep(IIII)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    .line 279
    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_51

    .line 280
    iput v2, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    .line 284
    :cond_51
    :goto_51
    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    add-int v1, p3, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_6a

    .line 285
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    sub-int/2addr v1, v2

    move v11, v1

    .end local p3    # "nPosY":I
    .local v1, "nPosY":I
    goto :goto_6c

    .line 284
    .end local v1    # "nPosY":I
    .restart local p3    # "nPosY":I
    :cond_6a
    move/from16 v11, p3

    .line 291
    .end local p3    # "nPosY":I
    .local v11, "nPosY":I
    :goto_6c
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v1, v12, v12, v12, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 292
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buttonGame:I

    add-int v3, p2, v10

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    move-object v1, p1

    move v4, v11

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    .line 293
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3f400000    # 0.75f

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    mul-float v6, v6, v5

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 294
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    add-int v3, p2, v10

    add-int/lit8 v4, v11, 0x2

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 295
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    add-int v3, p2, v10

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iHeight:I

    add-int/2addr v2, v11

    add-int/lit8 v2, v2, -0x2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v4, v2, v4

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidth:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 297
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v12, v12, v12, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 298
    const v1, 0x3f666666    # 0.9f

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setFontScale(F)V

    .line 299
    const/4 v1, 0x0

    move v7, v1

    .local v7, "i":I
    :goto_d6
    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iElementsSize:I

    if-ge v7, v1, :cond_101

    .line 300
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->lElements:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    add-int v2, p2, v10

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v11

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    mul-int v4, v4, v7

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v4, v4, v7

    add-int/2addr v4, v2

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->fAlpha:F

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/Toast;->iMaxWidth:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    .line 299
    add-int/lit8 v7, v7, 0x1

    goto :goto_d6

    .line 302
    .end local v7    # "i":I
    :cond_101
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->resetFontScale()V

    .line 303
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 304
    return-void
.end method

.method protected final getScrollPosX()I
    .registers 6

    .line 194
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    if-lez v0, :cond_50

    .line 195
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    if-eqz v0, :cond_29

    .line 196
    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    const-wide/16 v2, 0x5dc

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_4d

    .line 197
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    neg-int v1, v1

    if-ge v0, v1, :cond_4d

    .line 198
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    .line 199
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    goto :goto_4d

    .line 204
    :cond_29
    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_4d

    .line 205
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iWidthOver:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    if-le v0, v1, :cond_4d

    .line 206
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->backAnimation:Z

    .line 207
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->lTime:J

    .line 212
    :cond_4d
    :goto_4d
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->iScrollPosX:I

    return v0

    .line 215
    :cond_50
    const/4 v0, 0x0

    return v0
.end method

.method public final setInView(Ljava/lang/String;)V
    .registers 3
    .param p1, "sText"    # Ljava/lang/String;

    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/menu_element/Toast;->setInView(Ljava/lang/String;I)V

    .line 312
    return-void
.end method

.method public final setInView(Ljava/lang/String;I)V
    .registers 6
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "fontID"    # I

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    invoke-direct {v2, p1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 322
    const/16 v2, 0x9c4

    invoke-direct {p0, v0, v2, p2}, Laoc/kingdoms/lukasz/menu_element/Toast;->init(Ljava/util/List;II)V

    .line 323
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menu_element/Toast;->setInView(Z)V

    .line 324
    return-void
.end method

.method public final setInView(Z)V
    .registers 2
    .param p1, "inView"    # Z

    .line 307
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/Toast;->inView:Z

    .line 308
    return-void
.end method
