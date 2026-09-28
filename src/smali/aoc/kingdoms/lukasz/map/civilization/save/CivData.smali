.class public Laoc/kingdoms/lukasz/map/civilization/save/CivData;
.super Ljava/lang/Object;
.source "CivData.java"


# instance fields
.field public c:I

.field public p:I

.field public r:I

.field public t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->p:I

    .line 15
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->r:I

    return-void
.end method
