.class public Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;
.super Ljava/lang/Object;
.source "MapScenarios.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/map/MapScenarios;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScenarioCivData"
.end annotation


# instance fields
.field public CCL:I

.field public CPID:I

.field public CivID:I

.field public CivTAG:Ljava/lang/String;

.field public Economy:I

.field public Gold:I

.field public Legacy:I

.field public MAGL:I

.field public MAL:I

.field public Manpower:I

.field public NRL:I

.field public Nukes:I

.field public PCID:I

.field public Population:I

.field public SCL:I

.field public TaxEff:I

.field public TechnologyID:I

.field public v:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    sget v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->DEFAULT_VALUE:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Gold:I

    .line 478
    sget v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->DEFAULT_VALUE:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Legacy:I

    .line 479
    sget v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->DEFAULT_VALUE:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->TechnologyID:I

    .line 481
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Population:I

    .line 482
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Economy:I

    .line 484
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->TaxEff:I

    .line 485
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Manpower:I

    .line 488
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CCL:I

    .line 491
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->MAL:I

    .line 494
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->MAGL:I

    .line 497
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->SCL:I

    .line 500
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->NRL:I

    .line 502
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Nukes:I

    .line 505
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->v:I

    return-void
.end method
