.class public Laoc/kingdoms/lukasz/map/province/ProvinceInvest;
.super Ljava/lang/Object;
.source "ProvinceInvest.java"


# instance fields
.field public daysLeft:I

.field public investTime:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "daysLeft"    # I
    .param p2, "investTime"    # I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    .line 10
    iput p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->investTime:I

    .line 11
    return-void
.end method
