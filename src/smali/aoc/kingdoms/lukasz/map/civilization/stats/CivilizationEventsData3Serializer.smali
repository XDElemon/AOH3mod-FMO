.class public Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3Serializer;
.super Ljava/lang/Object;
.source "CivilizationEventsData3Serializer.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Json$Serializer<",
        "Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;
    .registers 7
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;
    .param p3, "type"    # Ljava/lang/Class;

    .line 25
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;-><init>()V

    .line 27
    .local v0, "data":Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;
    const-string v1, "a"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->a:I

    .line 28
    const-string v1, "p"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->p:I

    .line 30
    return-object v0
.end method

.method public bridge synthetic read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3Serializer;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;Ljava/lang/Class;)V
    .registers 6
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "object"    # Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;
    .param p3, "knownType"    # Ljava/lang/Class;

    .line 11
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    .line 13
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->a:I

    if-eqz v0, :cond_12

    .line 14
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    :cond_12
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->p:I

    if-eqz v0, :cond_21

    .line 17
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "p"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    :cond_21
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    .line 21
    return-void
.end method

.method public bridge synthetic write(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 4

    .line 7
    check-cast p2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3Serializer;->write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;Ljava/lang/Class;)V

    return-void
.end method
