.class public Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleTaskArmyText"
.end annotation


# instance fields
.field public armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

.field public taskKey:Ljava/lang/String;

.field public updateShift:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Laoc/kingdoms/lukasz/map/army/ArmyDivision;Z)V
    .registers 4
    .param p1, "taskKey"    # Ljava/lang/String;
    .param p2, "armyDivision"    # Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .param p3, "updateShift"    # Z

    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 909
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;->taskKey:Ljava/lang/String;

    .line 910
    iput-object p2, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    .line 911
    iput-boolean p3, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;->updateShift:Z

    .line 912
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 920
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 921
    :cond_4
    instance-of v0, p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 922
    :cond_a
    move-object v0, p1

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;

    .line 924
    .local v0, "that":Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;->taskKey:Ljava/lang/String;

    iget-object v2, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;->taskKey:Ljava/lang/String;

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 929
    const/4 v0, 0x0

    return v0
.end method

.method public update()V
    .registers 3

    .line 915
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;->updateShift:Z

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmyWidth_Just(Z)V

    .line 916
    return-void
.end method
