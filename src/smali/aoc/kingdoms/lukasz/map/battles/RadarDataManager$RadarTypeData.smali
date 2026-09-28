.class public final Laoc/kingdoms/lukasz/map/battles/RadarDataManager$RadarTypeData;
.super Ljava/lang/Object;


# instance fields
.field public CanDetectAir:Z

.field public CanDetectGround:Z

.field public CanDetectMissile:Z

.field public ColorA:F

.field public ColorB:F

.field public ColorG:F

.field public ColorR:F

.field public Id:I

.field public ImprovedByGen:I

.field public Name:Ljava/lang/String;

.field public Precision:F

.field public Range:F

.field public ShowLayer:Ljava/lang/String;

.field public Type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/RadarDataManager$RadarTypeData;->Id:I

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/RadarDataManager$RadarTypeData;->Range:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/RadarDataManager$RadarTypeData;->Precision:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/RadarDataManager$RadarTypeData;->CanDetectAir:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/RadarDataManager$RadarTypeData;->CanDetectGround:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/RadarDataManager$RadarTypeData;->CanDetectMissile:Z

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/RadarDataManager$RadarTypeData;->ImprovedByGen:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/RadarDataManager$RadarTypeData;->ColorR:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/RadarDataManager$RadarTypeData;->ColorG:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/RadarDataManager$RadarTypeData;->ColorB:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/RadarDataManager$RadarTypeData;->ColorA:F

    return-void
.end method
