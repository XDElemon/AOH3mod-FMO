.class public Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;
.super Ljava/lang/Object;
.source "AI_Build.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;
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

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    .line 57
    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    .line 58
    return-void
.end method
