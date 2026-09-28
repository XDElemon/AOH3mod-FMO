.class Laoc/kingdoms/lukasz/map/map/MapCities$8;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "MapCities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapCities;->updateNameToNewTrueOwner(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/map/MapCities;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/map/MapCities;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/map/MapCities;
    .param p2, "taskKey"    # Ljava/lang/String;
    .param p3, "id"    # I

    .line 692
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapCities$8;->this$0:Laoc/kingdoms/lukasz/map/map/MapCities;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 4

    .line 695
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities$8;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapCities$8;->id:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapCities$8;->taskKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/map/City;->setCityName(ILjava/lang/String;)V

    .line 696
    return-void
.end method
