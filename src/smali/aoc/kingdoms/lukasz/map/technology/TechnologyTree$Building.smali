.class public Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;
.super Ljava/lang/Object;
.source "TechnologyTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/technology/TechnologyTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Building"
.end annotation


# instance fields
.field public building:I

.field public buildingID:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "building"    # I
    .param p2, "buildingID"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;->building:I

    .line 39
    iput p2, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;->buildingID:I

    .line 40
    return-void
.end method
