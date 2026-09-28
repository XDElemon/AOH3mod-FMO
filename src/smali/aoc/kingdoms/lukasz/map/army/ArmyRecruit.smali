.class public Laoc/kingdoms/lukasz/map/army/ArmyRecruit;
.super Ljava/lang/Object;
.source "ArmyRecruit.java"


# instance fields
.field public armyID:I

.field public cost:I

.field public provinceID:I

.field public timeLeft:I

.field public toArmyKey:Ljava/lang/String;

.field public unitID:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .registers 6
    .param p1, "iProvinceID"    # I
    .param p2, "iUnitID"    # I
    .param p3, "iArmyID"    # I
    .param p4, "assignToArmyKey"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    .line 20
    iput p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    .line 21
    iput p2, p0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    .line 22
    iput p3, p0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    .line 24
    iput-object p4, p0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    .line 25
    return-void
.end method
