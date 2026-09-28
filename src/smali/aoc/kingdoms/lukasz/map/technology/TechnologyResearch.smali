.class public Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;
.super Ljava/lang/Object;
.source "TechnologyResearch.java"


# instance fields
.field public fProgress:F

.field public iTechID:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "iTechID"    # I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->fProgress:F

    .line 10
    iput p1, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->iTechID:I

    .line 11
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 4
    .param p1, "iTechID"    # I
    .param p2, "fProgress"    # F

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->fProgress:F

    .line 14
    iput p1, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->iTechID:I

    .line 15
    iput p2, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->fProgress:F

    .line 16
    return-void
.end method
