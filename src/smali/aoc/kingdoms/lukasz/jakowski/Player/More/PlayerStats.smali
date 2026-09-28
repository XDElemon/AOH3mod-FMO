.class public Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;
.super Ljava/lang/Object;
.source "PlayerStats.java"


# instance fields
.field public numOfWars:I

.field public recruitedGenerals:I

.field public recruitedRegiments:I

.field public startingEconomy:F

.field public startingPopulation:J

.field public startingProvinces:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->startingPopulation:J

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->startingEconomy:F

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->startingProvinces:I

    .line 15
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->numOfWars:I

    .line 17
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedRegiments:I

    .line 19
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedGenerals:I

    return-void
.end method


# virtual methods
.method public final initStartingData()V
    .registers 3

    .line 24
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->startingPopulation:J

    .line 25
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getEconomyTotal()F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->startingEconomy:F

    .line 26
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->startingProvinces:I

    .line 27
    return-void
.end method
