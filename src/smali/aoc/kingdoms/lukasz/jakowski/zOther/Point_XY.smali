.class public Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;
.super Ljava/lang/Object;
.source "Point_XY.java"


# instance fields
.field private iPosX:I

.field private iPosY:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->iPosX:I

    .line 12
    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->iPosY:I

    .line 13
    return-void
.end method


# virtual methods
.method public final getPosX()I
    .registers 2

    .line 18
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->iPosX:I

    return v0
.end method

.method public final getPosY()I
    .registers 2

    .line 26
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->iPosY:I

    return v0
.end method

.method public final setPosX(I)V
    .registers 2
    .param p1, "iPosX"    # I

    .line 22
    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->iPosX:I

    .line 23
    return-void
.end method

.method public final setPosY(I)V
    .registers 2
    .param p1, "iPosY"    # I

    .line 30
    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->iPosY:I

    .line 31
    return-void
.end method
