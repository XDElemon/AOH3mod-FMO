.class public Laoc/kingdoms/lukasz/map/technology/TechnologyTree$LawTech;
.super Ljava/lang/Object;
.source "TechnologyTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/technology/TechnologyTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LawTech"
.end annotation


# instance fields
.field public law:I

.field public lawID:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "law"    # I
    .param p2, "lawID"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$LawTech;->law:I

    .line 69
    iput p2, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$LawTech;->lawID:I

    .line 70
    return-void
.end method
