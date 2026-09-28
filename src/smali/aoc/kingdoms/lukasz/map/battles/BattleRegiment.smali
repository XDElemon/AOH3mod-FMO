.class public Laoc/kingdoms/lukasz/map/battles/BattleRegiment;
.super Ljava/lang/Object;
.source "BattleRegiment.java"


# instance fields
.field public aK:Ljava/lang/String;

.field public aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

.field public c:I

.field public cL:I

.field public ca:I

.field public d:I

.field public f:B

.field public l:B

.field public rL:I

.field public re:I

.field public rn:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    .line 29
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    .line 32
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->d:I

    .line 35
    iput-byte v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->f:B

    .line 38
    iput-byte v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->l:B

    .line 40
    return-void
.end method

.method public constructor <init>(ILaoc/kingdoms/lukasz/map/army/ArmyRegiment;Ljava/lang/String;)V
    .registers 5
    .param p1, "iCivID"    # I
    .param p2, "armyRegiment"    # Laoc/kingdoms/lukasz/map/army/ArmyRegiment;
    .param p3, "sArmyDivisionKey"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    .line 29
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    .line 32
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->d:I

    .line 35
    iput-byte v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->f:B

    .line 38
    iput-byte v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->l:B

    .line 43
    iput p1, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    .line 44
    iput-object p2, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    .line 45
    iput-object p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    .line 46
    return-void
.end method
