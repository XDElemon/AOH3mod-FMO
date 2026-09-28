.class public Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;
.super Ljava/lang/Object;
.source "MapScenarios.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/map/MapScenarios;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Details"
.end annotation


# instance fields
.field public Age:I

.field public Author:Ljava/lang/String;

.field public Campaign:Z

.field public CivDefault_Gold:I

.field public CivDefault_GoldRandom:I

.field public CivDefault_Legacy:I

.field public CivDefault_LegacyRandom:I

.field public CivDefault_ManpowerPercentage:I

.field public CivDefault_Technology:I

.field public Civs:I

.field public Day:I

.field public HoursPerTurn:I

.field public Month:I

.field public Name:Ljava/lang/String;

.field public ProvinceDefault_Economy:I

.field public ProvinceDefault_Manpower:I

.field public ProvinceDefault_Population:I

.field public ProvinceDefault_TaxEfficiency:I

.field public Year:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Campaign:Z

    .line 84
    const/16 v0, 0x64

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Gold:I

    .line 85
    const/16 v1, 0x32

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_GoldRandom:I

    .line 86
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Legacy:I

    .line 87
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_LegacyRandom:I

    .line 88
    const/16 v0, 0x3c

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_ManpowerPercentage:I

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Technology:I

    .line 91
    const v0, 0x30d40

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Population:I

    .line 92
    const/16 v0, 0xa

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Economy:I

    .line 93
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_TaxEfficiency:I

    .line 94
    const/4 v0, 0x3

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Manpower:I

    .line 96
    const/16 v0, 0x18

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->HoursPerTurn:I

    return-void
.end method
