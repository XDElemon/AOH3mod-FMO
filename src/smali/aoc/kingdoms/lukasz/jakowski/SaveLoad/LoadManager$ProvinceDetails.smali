.class public Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;
.super Ljava/lang/Object;
.source "LoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ProvinceDetails"
.end annotation


# instance fields
.field bd:F

.field co:I

.field gr:F

.field lp:I

.field pid:I

.field re:I

.field rs:I

.field sx:I

.field sy:I

.field tr:I


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ProvinceDetails;->rs:I

    return-void
.end method
