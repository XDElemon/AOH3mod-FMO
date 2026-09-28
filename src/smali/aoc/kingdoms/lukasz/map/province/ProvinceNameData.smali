.class public Laoc/kingdoms/lukasz/map/province/ProvinceNameData;
.super Ljava/lang/Object;
.source "ProvinceNameData.java"


# instance fields
.field public drawAngleLow:F

.field public drawMatrix4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/math/Matrix4;",
            ">;"
        }
    .end annotation
.end field

.field public drawPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;",
            ">;"
        }
    .end annotation
.end field

.field public fCenterX:F

.field public fCenterY:F

.field public fX:F

.field public fX2:F

.field public fY:F

.field public fY2:F

.field public fontScale:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawPoints:Ljava/util/List;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawAngleLow:F

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->drawMatrix4:Ljava/util/List;

    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fontScale:F

    return-void
.end method
