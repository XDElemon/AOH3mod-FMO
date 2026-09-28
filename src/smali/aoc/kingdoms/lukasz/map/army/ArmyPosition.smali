.class public Laoc/kingdoms/lukasz/map/army/ArmyPosition;
.super Ljava/lang/Object;
.source "ArmyPosition.java"


# instance fields
.field public key:Ljava/lang/String;

.field public provinceID:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "provinceID"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p2, p0, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    .line 12
    iput p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    .line 13
    return-void
.end method
