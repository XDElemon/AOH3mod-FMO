.class public Laoc/kingdoms/lukasz/units/UnitType_Sheep;
.super Laoc/kingdoms/lukasz/units/UnitType;
.source "UnitType_Sheep.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Laoc/kingdoms/lukasz/units/UnitType;-><init>()V

    return-void
.end method


# virtual methods
.method public initUnit()V
    .registers 13

    .line 9
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/UnitType_Sheep;->animations_Walk:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/units/Animation_Unit;

    new-instance v5, Laoc/kingdoms/lukasz/units/Hitbox;

    const/4 v8, 0x3

    const/4 v9, 0x7

    const/16 v10, 0x1c

    const/16 v11, 0x24

    invoke-direct {v5, v8, v9, v10, v11}, Laoc/kingdoms/lukasz/units/Hitbox;-><init>(IIII)V

    const/16 v6, 0x40

    const-string v2, "gfx/units/Sheep/walk.png"

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/units/Animation_Unit;-><init>(Ljava/lang/String;IILaoc/kingdoms/lukasz/units/Hitbox;I)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Laoc/kingdoms/lukasz/units/UnitType_Sheep;->animations_Idle:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/units/Animation_Unit;

    new-instance v5, Laoc/kingdoms/lukasz/units/Hitbox;

    invoke-direct {v5, v8, v9, v10, v11}, Laoc/kingdoms/lukasz/units/Hitbox;-><init>(IIII)V

    const-string v2, "gfx/units/Sheep/die.png"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/units/Animation_Unit;-><init>(Ljava/lang/String;IILaoc/kingdoms/lukasz/units/Hitbox;I)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    const v0, 0x3ef5c28f    # 0.48f

    iput v0, p0, Laoc/kingdoms/lukasz/units/UnitType_Sheep;->unitSpeed:F

    .line 13
    const/16 v0, 0x41

    iput v0, p0, Laoc/kingdoms/lukasz/units/UnitType_Sheep;->maxHP:I

    .line 14
    return-void
.end method
