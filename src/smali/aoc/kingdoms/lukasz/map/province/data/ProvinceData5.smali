.class public Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;
.super Ljava/lang/Object;
.source "ProvinceData5.java"


# instance fields
.field public co:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    return-void
.end method
