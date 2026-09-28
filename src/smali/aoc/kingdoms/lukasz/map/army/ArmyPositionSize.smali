.class public Laoc/kingdoms/lukasz/map/army/ArmyPositionSize;
.super Ljava/lang/Object;
.source "ArmyPositionSize.java"


# instance fields
.field public armySize:I

.field public key:Ljava/lang/String;

.field public provinceID:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .registers 4
    .param p1, "provinceID"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "armySize"    # I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p2, p0, Laoc/kingdoms/lukasz/map/army/ArmyPositionSize;->key:Ljava/lang/String;

    .line 11
    iput p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyPositionSize;->provinceID:I

    .line 12
    iput p3, p0, Laoc/kingdoms/lukasz/map/army/ArmyPositionSize;->armySize:I

    .line 13
    return-void
.end method
