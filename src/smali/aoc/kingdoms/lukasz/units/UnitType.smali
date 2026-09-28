.class public Laoc/kingdoms/lukasz/units/UnitType;
.super Ljava/lang/Object;
.source "UnitType.java"


# instance fields
.field protected animations_Idle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/units/Animation_Unit;",
            ">;"
        }
    .end annotation
.end field

.field protected animations_Walk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/units/Animation_Unit;",
            ">;"
        }
    .end annotation
.end field

.field protected maxHP:I

.field protected unitSpeed:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/units/UnitType;->animations_Idle:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/units/UnitType;->animations_Walk:Ljava/util/List;

    .line 11
    const/16 v0, 0x64

    iput v0, p0, Laoc/kingdoms/lukasz/units/UnitType;->maxHP:I

    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/units/UnitType;->unitSpeed:F

    .line 17
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/UnitType;->initUnit()V

    .line 18
    return-void
.end method


# virtual methods
.method public getAnimation_Idle(I)Laoc/kingdoms/lukasz/units/Animation_Unit;
    .registers 3
    .param p1, "i"    # I

    .line 25
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/UnitType;->animations_Idle:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/units/Animation_Unit;

    return-object v0
.end method

.method public getAnimation_Walk()Laoc/kingdoms/lukasz/units/Animation_Unit;
    .registers 3

    .line 29
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/UnitType;->animations_Walk:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/units/Animation_Unit;

    return-object v0
.end method

.method public final getMaxHP()I
    .registers 2

    .line 39
    iget v0, p0, Laoc/kingdoms/lukasz/units/UnitType;->maxHP:I

    return v0
.end method

.method public final getUnitSpeed()F
    .registers 2

    .line 35
    iget v0, p0, Laoc/kingdoms/lukasz/units/UnitType;->unitSpeed:F

    return v0
.end method

.method public initUnit()V
    .registers 1

    .line 20
    return-void
.end method
