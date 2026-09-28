.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;
.super Ljava/lang/Object;
.source "AI_MoveAtWar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnemyArmy"
.end annotation


# instance fields
.field public army:I

.field public distance:F

.field public provinceID:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "provinceID"    # I
    .param p2, "army"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->provinceID:I

    .line 44
    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->army:I

    .line 45
    return-void
.end method
