.class Laoc/kingdoms/lukasz/map/province/Province$9;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "Province.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/Province;->setCivID(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/province/Province;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/province/Province;
    .param p2, "taskKey"    # Ljava/lang/String;
    .param p3, "id"    # I

    .line 1757
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province$9;->this$0:Laoc/kingdoms/lukasz/map/province/Province;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 3

    .line 1760
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province$9;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province$9;->id:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->buildNeighbors(I)V

    .line 1761
    return-void
.end method
