.class public Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;
.super Ljava/lang/Object;
.source "Map_Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/map/Map_Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapData"
.end annotation


# instance fields
.field public Author:Ljava/lang/String;

.field public BackgroundColor:[F

.field public BackgroundColor_ZoomIn:[F

.field public BackgroundColor_ZoomOut:[F

.field public BackgroundScale:F

.field public BackgroundSize_X:I

.field public BackgroundSize_Y:I

.field public BackgroundZoomOut_AnimationDuration:I

.field public BackgroundZoomOut_Enable:Z

.field public BackgroundZoomOut_Scale:F

.field public BackgroundZoomOut_Size_X:I

.field public BackgroundZoomOut_Size_Y:I

.field public BuildingsConstructionTime:F

.field public BuildingsCost:F

.field public BuildingsMaintenanceCost:F

.field public DRAW_ARMY_MIN_SCALE:F

.field public DRAW_CITIES_MIN_SCALE:F

.field public DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

.field public DRAW_INNER_BORDERS:F

.field public DRAW_OCCUPIED_PROVINCES_MIN_SCALE:F

.field public DRAW_OCCUPIED_SCALE:F

.field public DefaultMapScale:I

.field public DefaultScenario:Ljava/lang/String;

.field public DistanceKm:F

.field public ExtraMapScale:I

.field public Name:Ljava/lang/String;

.field public NumOfProvinces:I

.field public ResearchCost:F

.field public SeaOverAlpha:F

.field public UnitsMaintenanceCost:F

.field public UnitsRecruitCost:F

.field public WastelandColor:[F

.field public Wiki:Ljava/lang/String;

.field public WorldMap:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->ResearchCost:F

    .line 50
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->UnitsRecruitCost:F

    .line 51
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->UnitsMaintenanceCost:F

    .line 53
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BuildingsCost:F

    .line 54
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BuildingsMaintenanceCost:F

    .line 55
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BuildingsConstructionTime:F

    .line 60
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DRAW_CITIES_MIN_SCALE:F

    .line 61
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    .line 62
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DRAW_INNER_BORDERS:F

    .line 63
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DRAW_OCCUPIED_PROVINCES_MIN_SCALE:F

    .line 64
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DRAW_ARMY_MIN_SCALE:F

    return-void
.end method
