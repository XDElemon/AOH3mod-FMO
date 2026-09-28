.class public Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;
.super Ljava/lang/Object;
.source "OccupiedProvince.java"


# instance fields
.field public p:I

.field public sinceTurnID:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "provinceID"    # I
    .param p2, "sinceTurnID"    # I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    .line 15
    iput p2, p0, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->sinceTurnID:I

    .line 16
    return-void
.end method
