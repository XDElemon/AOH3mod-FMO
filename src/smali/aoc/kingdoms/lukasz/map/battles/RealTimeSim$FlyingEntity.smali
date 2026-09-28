.class public Laoc/kingdoms/lukasz/map/battles/RealTimeSim$FlyingEntity;
.super Ljava/lang/Object;
.source "RealTimeSim.java"


# instance fields
.field public dstProvinceID:I

.field public entityType:I

.field public hp:I

.field public launchTime:J

.field public ownerCivID:I

.field public progress:F

.field public speed:F

.field public squadSize:I

.field public srcProvinceID:I

.field public state:I


# direct methods
.method public constructor <init>(IIIIF)V
    .registers 8
    .param p1, "srcProvinceID"    # I
    .param p2, "dstProvinceID"    # I
    .param p3, "ownerCivID"    # I
    .param p4, "squadSize"    # I
    .param p5, "speed"    # F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/map/battles/RealTimeSim$FlyingEntity;->srcProvinceID:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/RealTimeSim$FlyingEntity;->dstProvinceID:I

    iput p3, p0, Laoc/kingdoms/lukasz/map/battles/RealTimeSim$FlyingEntity;->ownerCivID:I

    iput p4, p0, Laoc/kingdoms/lukasz/map/battles/RealTimeSim$FlyingEntity;->squadSize:I

    iput p5, p0, Laoc/kingdoms/lukasz/map/battles/RealTimeSim$FlyingEntity;->speed:F

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/RealTimeSim$FlyingEntity;->launchTime:J

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/RealTimeSim$FlyingEntity;->progress:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/RealTimeSim$FlyingEntity;->state:I

    const/16 v0, 0x64

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/RealTimeSim$FlyingEntity;->hp:I

    return-void
.end method
