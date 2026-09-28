.class public Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;
.super Ljava/lang/Object;
.source "PlayerData.java"


# instance fields
.field public activeEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;",
            ">;"
        }
    .end annotation
.end field

.field public armyImgID:I

.field public espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

.field public invasion:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;

.field public lowArmyTurnID:I

.field public pinnedArmies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pinnedProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public reorganizeArmyStep:I

.field public techQueue:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;

.field public wasVassalized:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedProvinces:Ljava/util/List;

    .line 14
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->invasion:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;

    .line 16
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    .line 20
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->techQueue:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->wasVassalized:Z

    .line 24
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->reorganizeArmyStep:I

    .line 26
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->armyImgID:I

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->lowArmyTurnID:I

    .line 30
    return-void
.end method


# virtual methods
.method public loadUpdate()V
    .registers 3

    .line 33
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iPinnedArmiesSize:I

    .line 34
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iPinnedProvincesSize:I

    .line 35
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iActiveEventsSize:I

    .line 36
    return-void
.end method
