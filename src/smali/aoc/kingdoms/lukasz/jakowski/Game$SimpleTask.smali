.class public Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.super Ljava/lang/Object;
.source "Game.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/Game;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleTask"
.end annotation


# instance fields
.field public id:I

.field public id2:I

.field public taskKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "taskKey"    # Ljava/lang/String;

    .line 1522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1523
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->taskKey:Ljava/lang/String;

    .line 1524
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "taskKey"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 1526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1527
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->taskKey:Ljava/lang/String;

    .line 1528
    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->id:I

    .line 1529
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "taskKey"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "id2"    # I

    .line 1531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1532
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->taskKey:Ljava/lang/String;

    .line 1533
    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->id:I

    .line 1534
    iput p3, p0, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->id2:I

    .line 1535
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1541
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 1542
    :cond_4
    instance-of v0, p1, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 1543
    :cond_a
    move-object v0, p1

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;

    .line 1545
    .local v0, "that":Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->taskKey:Ljava/lang/String;

    iget-object v2, v0, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->taskKey:Ljava/lang/String;

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 1550
    const/4 v0, 0x0

    return v0
.end method

.method public update()V
    .registers 1

    .line 1537
    return-void
.end method
