.class Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$1;
.super Ljava/lang/Object;
.source "AI_MoveAtWar.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->moveToEnemyArmies_SortEnemyArmies(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;)I
    .registers 5
    .param p1, "army1"    # Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;
    .param p2, "army2"    # Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    .line 197
    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->distance:F

    iget v1, p2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->distance:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 194
    check-cast p1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    check-cast p2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$1;->compare(Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;)I

    move-result p1

    return p1
.end method
