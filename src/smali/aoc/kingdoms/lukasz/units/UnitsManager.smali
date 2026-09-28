.class public Laoc/kingdoms/lukasz/units/UnitsManager;
.super Ljava/lang/Object;
.source "UnitsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/units/UnitsManager$MoveUnitInDirection;
    }
.end annotation


# instance fields
.field private moveUnit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/units/UnitsManager$MoveUnitInDirection;",
            ">;"
        }
    .end annotation
.end field

.field public templar:Laoc/kingdoms/lukasz/units/UnitType;

.field public unitSheep:Laoc/kingdoms/lukasz/units/UnitType;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/units/UnitsManager;->moveUnit:Ljava/util/List;

    .line 19
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/UnitsManager;->initMoveUnit()V

    .line 20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/UnitsManager;->loadUnits()V

    .line 23
    return-void
.end method


# virtual methods
.method public final initMoveUnit()V
    .registers 1

    .line 143
    return-void
.end method

.method public final initTestUnits()V
    .registers 1

    .line 32
    return-void
.end method

.method public final loadUnits()V
    .registers 2

    .line 37
    new-instance v0, Laoc/kingdoms/lukasz/units/UnitType_Templar;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/units/UnitType_Templar;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/units/UnitsManager;->templar:Laoc/kingdoms/lukasz/units/UnitType;

    .line 38
    new-instance v0, Laoc/kingdoms/lukasz/units/UnitType_Sheep;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/units/UnitType_Sheep;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/units/UnitsManager;->unitSheep:Laoc/kingdoms/lukasz/units/UnitType;

    .line 39
    return-void
.end method

.method public final tempDrawUnits(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 2
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 61
    return-void
.end method

.method public final tempUpdateUnits()V
    .registers 1

    .line 53
    return-void
.end method
