.class public Laoc/kingdoms/lukasz/jakowski/zOther/XY;
.super Ljava/lang/Object;
.source "XY.java"


# instance fields
.field public X:I

.field public Y:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "X"    # I
    .param p2, "Y"    # I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->X:I

    .line 10
    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->Y:I

    .line 11
    return-void
.end method


# virtual methods
.method public final setXY(II)V
    .registers 3
    .param p1, "X"    # I
    .param p2, "Y"    # I

    .line 14
    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->X:I

    .line 15
    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;->Y:I

    .line 16
    return-void
.end method
