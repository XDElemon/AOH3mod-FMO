.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;
.super Ljava/lang/Object;
.source "AI_MoveAtPeace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArmyDivision_TempData"
.end annotation


# instance fields
.field public armyPosition:Laoc/kingdoms/lukasz/map/army/ArmyPosition;

.field public distance:F

.field public iRegiments:I


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/map/army/ArmyPosition;I)V
    .registers 3
    .param p1, "armyPosition"    # Laoc/kingdoms/lukasz/map/army/ArmyPosition;
    .param p2, "iRegiments"    # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->armyPosition:Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    .line 23
    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->iRegiments:I

    .line 24
    return-void
.end method
