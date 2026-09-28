.class Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_VassalLiberty$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "AI_VassalLiberty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_VassalLiberty;->update(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "taskKey"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 48
    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 3

    .line 51
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiManager:Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_VassalLiberty$1;->id:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->update_ReorganizeArmiesAtPeace(I)V

    .line 52
    return-void
.end method
